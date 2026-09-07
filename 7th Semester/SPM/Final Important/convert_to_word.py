"""
Convert Markdown to Word Document
Converts important.md to important.docx with proper formatting
"""

from docx import Document
from docx.shared import Pt, Inches, RGBColor
from docx.enum.text import WD_ALIGN_PARAGRAPH
from docx.enum.style import WD_STYLE_TYPE
import re

def add_heading(doc, text, level):
    """Add a heading with custom formatting"""
    heading = doc.add_heading(text, level=level)
    heading.alignment = WD_ALIGN_PARAGRAPH.LEFT
    return heading

def add_formatted_paragraph(doc, text, bold=False, italic=False, color=None):
    """Add a paragraph with formatting"""
    para = doc.add_paragraph()
    run = para.add_run(text)
    if bold:
        run.bold = True
    if italic:
        run.italic = True
    if color:
        run.font.color.rgb = RGBColor(*color)
    return para

def add_code_block(doc, code_text):
    """Add code block with monospace font"""
    para = doc.add_paragraph(code_text)
    para.style = 'Normal'
    for run in para.runs:
        run.font.name = 'Consolas'
        run.font.size = Pt(9)
    para.paragraph_format.left_indent = Inches(0.5)
    para.paragraph_format.space_before = Pt(6)
    para.paragraph_format.space_after = Pt(6)
    # Add light gray background effect
    return para

def parse_markdown_line(doc, line):
    """Parse a single markdown line and add to document"""
    line = line.rstrip()
    
    # Skip empty lines
    if not line.strip():
        doc.add_paragraph()
        return 'normal'
    
    # Headers (# ## ### etc)
    if line.startswith('#'):
        level = len(line) - len(line.lstrip('#'))
        text = line.lstrip('#').strip()
        add_heading(doc, text, level=min(level, 9))
        return 'normal'
    
    # Horizontal rule
    if line.strip() in ['---', '___', '***']:
        doc.add_paragraph('_' * 80)
        return 'normal'
    
    # Code block markers
    if line.strip().startswith('```'):
        return 'code'
    
    # Lists (unordered)
    if re.match(r'^[\s]*[-*+]\s', line):
        indent_level = len(line) - len(line.lstrip())
        text = re.sub(r'^[\s]*[-*+]\s', '', line)
        text = process_inline_formatting(text)
        para = doc.add_paragraph(text, style='List Bullet')
        if indent_level > 2:
            para.paragraph_format.left_indent = Inches(0.5 * (indent_level // 2))
        return 'normal'
    
    # Lists (ordered)
    if re.match(r'^[\s]*\d+\.\s', line):
        text = re.sub(r'^[\s]*\d+\.\s', '', line)
        text = process_inline_formatting(text)
        doc.add_paragraph(text, style='List Number')
        return 'normal'
    
    # Tables (basic support)
    if '|' in line and line.count('|') > 2:
        # Simple table row detection
        return 'table'
    
    # Blockquotes
    if line.strip().startswith('>'):
        text = line.strip()[1:].strip()
        para = doc.add_paragraph(text)
        para.paragraph_format.left_indent = Inches(0.5)
        para.style = 'Intense Quote'
        return 'normal'
    
    # Bold text markers
    if '**' in line or '__' in line:
        add_formatted_text_paragraph(doc, line)
        return 'normal'
    
    # Regular paragraph
    para = doc.add_paragraph()
    add_inline_formatting(para, line)
    return 'normal'

def process_inline_formatting(text):
    """Remove markdown formatting from text"""
    # Remove bold
    text = re.sub(r'\*\*(.+?)\*\*', r'\1', text)
    text = re.sub(r'__(.+?)__', r'\1', text)
    # Remove italic
    text = re.sub(r'\*(.+?)\*', r'\1', text)
    text = re.sub(r'_(.+?)_', r'\1', text)
    # Remove code
    text = re.sub(r'`(.+?)`', r'\1', text)
    # Remove links
    text = re.sub(r'\[(.+?)\]\(.+?\)', r'\1', text)
    return text

def add_inline_formatting(para, text):
    """Add text with inline markdown formatting"""
    # Pattern to match **bold**, *italic*, `code`, [links](url)
    pattern = r'(\*\*.*?\*\*|\*.*?\*|`.*?`|__.*?__|_.*?_|\[.*?\]\(.*?\))'
    parts = re.split(pattern, text)
    
    for part in parts:
        if not part:
            continue
        
        # Bold with **
        if part.startswith('**') and part.endswith('**'):
            run = para.add_run(part[2:-2])
            run.bold = True
        # Bold with __
        elif part.startswith('__') and part.endswith('__'):
            run = para.add_run(part[2:-2])
            run.bold = True
        # Italic with *
        elif part.startswith('*') and part.endswith('*') and not part.startswith('**'):
            run = para.add_run(part[1:-1])
            run.italic = True
        # Italic with _
        elif part.startswith('_') and part.endswith('_') and not part.startswith('__'):
            run = para.add_run(part[1:-1])
            run.italic = True
        # Code with `
        elif part.startswith('`') and part.endswith('`'):
            run = para.add_run(part[1:-1])
            run.font.name = 'Consolas'
            run.font.size = Pt(10)
        # Links [text](url)
        elif part.startswith('[') and '](' in part:
            match = re.match(r'\[(.*?)\]\((.*?)\)', part)
            if match:
                run = para.add_run(match.group(1))
                run.font.color.rgb = RGBColor(0, 0, 255)
                run.underline = True
        else:
            para.add_run(part)

def add_formatted_text_paragraph(doc, text):
    """Add paragraph with mixed formatting"""
    para = doc.add_paragraph()
    add_inline_formatting(para, text)

def convert_markdown_to_word(md_file, docx_file):
    """Main conversion function"""
    print(f"Converting {md_file} to {docx_file}...")
    
    # Create a new Document
    doc = Document()
    
    # Set document margins
    sections = doc.sections
    for section in sections:
        section.top_margin = Inches(1)
        section.bottom_margin = Inches(1)
        section.left_margin = Inches(1)
        section.right_margin = Inches(1)
    
    # Read markdown file
    with open(md_file, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    
    mode = 'normal'  # modes: 'normal', 'code', 'table'
    code_buffer = []
    table_buffer = []
    
    for line in lines:
        # Handle code blocks
        if line.strip().startswith('```'):
            if mode == 'code':
                # End of code block
                code_text = ''.join(code_buffer)
                add_code_block(doc, code_text)
                code_buffer = []
                mode = 'normal'
            else:
                # Start of code block
                mode = 'code'
            continue
        
        if mode == 'code':
            code_buffer.append(line)
            continue
        
        # Handle table rows
        if '|' in line and line.count('|') >= 2:
            if mode != 'table':
                mode = 'table'
                table_buffer = []
            
            # Skip separator lines (|---|---|)
            if re.match(r'^\|[\s\-:]+\|', line.strip()):
                continue
                
            table_buffer.append(line)
            continue
        else:
            # End of table
            if mode == 'table' and table_buffer:
                add_table_to_doc(doc, table_buffer)
                table_buffer = []
                mode = 'normal'
        
        # Normal line processing
        parse_markdown_line(doc, line)
    
    # Handle any remaining code or table
    if code_buffer:
        add_code_block(doc, ''.join(code_buffer))
    if table_buffer:
        add_table_to_doc(doc, table_buffer)
    
    # Save the document
    doc.save(docx_file)
    print(f"Successfully created {docx_file}")

def add_table_to_doc(doc, table_lines):
    """Add a markdown table to the document"""
    if not table_lines:
        return
    
    # Parse table rows
    rows = []
    for line in table_lines:
        cells = [cell.strip() for cell in line.split('|')]
        cells = [c for c in cells if c]  # Remove empty cells
        if cells:
            rows.append(cells)
    
    if not rows:
        return
    
    # Create table
    num_cols = len(rows[0])
    table = doc.add_table(rows=len(rows), cols=num_cols)
    table.style = 'Light Grid Accent 1'
    
    # Fill table
    for i, row_data in enumerate(rows):
        for j, cell_data in enumerate(row_data):
            if j < num_cols:
                cell = table.rows[i].cells[j]
                cell.text = cell_data
                # Bold header row
                if i == 0:
                    for paragraph in cell.paragraphs:
                        for run in paragraph.runs:
                            run.bold = True

if __name__ == "__main__":
    md_file = "important.md"
    docx_file = "important.docx"

    try:
        convert_markdown_to_word(md_file, docx_file)
        print("\nConversion completed successfully!")
        print(f"  Output file: {docx_file}")
    except Exception as e:
        print(f"\nError during conversion: {e}")
        import traceback
        traceback.print_exc()
