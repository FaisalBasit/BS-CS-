"""
Convert HCI Study Notes Markdown to Word Document
"""

from docx import Document
from docx.shared import Inches, Pt, RGBColor
from docx.enum.text import WD_ALIGN_PARAGRAPH
from docx.enum.style import WD_STYLE_TYPE
from docx.oxml.ns import qn
from docx.oxml import OxmlElement
import re

def add_horizontal_line(doc):
    """Add a horizontal line to the document"""
    p = doc.add_paragraph()
    p_border = OxmlElement('w:pBdr')
    bottom = OxmlElement('w:bottom')
    bottom.set(qn('w:val'), 'single')
    bottom.set(qn('w:sz'), '6')
    bottom.set(qn('w:space'), '1')
    bottom.set(qn('w:color'), '000000')
    p_border.append(bottom)
    p._p.get_or_add_pPr().append(p_border)

def set_cell_shading(cell, color):
    """Set background color for a table cell"""
    shading = OxmlElement('w:shd')
    shading.set(qn('w:fill'), color)
    cell._tc.get_or_add_tcPr().append(shading)

def convert_md_to_docx(md_file, docx_file):
    """Convert markdown file to Word document"""
    
    # Read markdown content
    with open(md_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Create document
    doc = Document()
    
    # Set up styles
    styles = doc.styles
    
    # Modify Normal style
    normal_style = styles['Normal']
    normal_style.font.name = 'Calibri'
    normal_style.font.size = Pt(11)
    
    # Process content line by line
    lines = content.split('\n')
    i = 0
    in_code_block = False
    code_block_content = []
    in_table = False
    table_rows = []
    
    while i < len(lines):
        line = lines[i]
        
        # Handle code blocks
        if line.strip().startswith('```'):
            if in_code_block:
                # End of code block - add as formatted text
                if code_block_content:
                    p = doc.add_paragraph()
                    p.paragraph_format.left_indent = Inches(0.3)
                    run = p.add_run('\n'.join(code_block_content))
                    run.font.name = 'Consolas'
                    run.font.size = Pt(9)
                code_block_content = []
                in_code_block = False
            else:
                in_code_block = True
            i += 1
            continue
        
        if in_code_block:
            code_block_content.append(line)
            i += 1
            continue
        
        # Handle tables (lines starting with |)
        if line.strip().startswith('|') and '|' in line[1:]:
            if not in_table:
                in_table = True
                table_rows = []
            
            # Parse table row
            cells = [cell.strip() for cell in line.split('|')[1:-1]]
            if cells and not all(c.replace('-', '').replace(':', '').strip() == '' for c in cells):
                table_rows.append(cells)
            i += 1
            continue
        elif in_table:
            # End of table
            if table_rows:
                num_cols = max(len(row) for row in table_rows)
                table = doc.add_table(rows=len(table_rows), cols=num_cols)
                table.style = 'Table Grid'
                
                for row_idx, row_data in enumerate(table_rows):
                    for col_idx, cell_text in enumerate(row_data):
                        if col_idx < num_cols:
                            cell = table.rows[row_idx].cells[col_idx]
                            cell.text = cell_text
                            if row_idx == 0:
                                # Header row - bold
                                for paragraph in cell.paragraphs:
                                    for run in paragraph.runs:
                                        run.bold = True
                                set_cell_shading(cell, 'D9E2F3')
                
                doc.add_paragraph()  # Space after table
            table_rows = []
            in_table = False
        
        # Handle headings
        if line.startswith('# '):
            # Title (Heading 1)
            text = line[2:].strip()
            # Remove emoji
            text = re.sub(r'[^\x00-\x7F]+', '', text).strip()
            p = doc.add_heading(text, level=0)
            p.alignment = WD_ALIGN_PARAGRAPH.CENTER
        
        elif line.startswith('## '):
            # Heading 2
            text = line[3:].strip()
            doc.add_heading(text, level=1)
        
        elif line.startswith('### '):
            # Heading 3
            text = line[4:].strip()
            doc.add_heading(text, level=2)
        
        elif line.startswith('**STEP') or (line.startswith('**') and line.endswith('**') and len(line) < 100):
            # Bold headings like **STEP 1: ...**
            text = line.strip('*').strip()
            p = doc.add_paragraph()
            run = p.add_run(text)
            run.bold = True
            run.font.size = Pt(12)
        
        elif line.startswith('> '):
            # Blockquote
            text = line[2:].strip()
            # Process bold text in blockquotes
            text = re.sub(r'\*\*(.+?)\*\*', r'\1', text)
            p = doc.add_paragraph()
            p.paragraph_format.left_indent = Inches(0.5)
            p.paragraph_format.space_before = Pt(6)
            p.paragraph_format.space_after = Pt(6)
            run = p.add_run(text)
            run.italic = True
            run.font.color.rgb = RGBColor(80, 80, 80)
        
        elif line.startswith('- ') or line.startswith('* '):
            # Bullet point
            text = line[2:].strip()
            p = doc.add_paragraph(style='List Bullet')
            # Handle bold text
            parts = re.split(r'(\*\*.*?\*\*)', text)
            for part in parts:
                if part.startswith('**') and part.endswith('**'):
                    run = p.add_run(part[2:-2])
                    run.bold = True
                else:
                    p.add_run(part)
        
        elif line.startswith('---'):
            # Horizontal rule
            add_horizontal_line(doc)
        
        elif line.strip() == '':
            # Empty line - add paragraph break
            pass
        
        else:
            # Regular paragraph
            if line.strip():
                p = doc.add_paragraph()
                # Handle bold and italic text
                text = line.strip()
                
                # Split by bold markers
                parts = re.split(r'(\*\*.*?\*\*)', text)
                for part in parts:
                    if part.startswith('**') and part.endswith('**'):
                        run = p.add_run(part[2:-2])
                        run.bold = True
                    else:
                        # Handle italic
                        italic_parts = re.split(r'(\*[^*]+\*)', part)
                        for ipart in italic_parts:
                            if ipart.startswith('*') and ipart.endswith('*') and not ipart.startswith('**'):
                                run = p.add_run(ipart[1:-1])
                                run.italic = True
                            else:
                                p.add_run(ipart)
        
        i += 1
    
    # Handle any remaining table
    if in_table and table_rows:
        num_cols = max(len(row) for row in table_rows)
        table = doc.add_table(rows=len(table_rows), cols=num_cols)
        table.style = 'Table Grid'
        for row_idx, row_data in enumerate(table_rows):
            for col_idx, cell_text in enumerate(row_data):
                if col_idx < num_cols:
                    table.rows[row_idx].cells[col_idx].text = cell_text
    
    # Save document
    doc.save(docx_file)
    print(f"Successfully created: {docx_file}")

if __name__ == "__main__":
    md_file = r"d:\Sir Syed University\7th Semester\HCI\Final\Final Exam Notes.md"
    docx_file = r"d:\Sir Syed University\7th Semester\HCI\Final\Final Exam Notes.docx"
    convert_md_to_docx(md_file, docx_file)
