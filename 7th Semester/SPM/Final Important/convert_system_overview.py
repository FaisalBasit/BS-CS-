"""
Convert system-overview.md to Word Document with Mermaid diagram as PNG
"""

from docx import Document
from docx.shared import Pt, Inches, RGBColor
from docx.enum.text import WD_ALIGN_PARAGRAPH
import re
import base64
import requests
import os

# ─── Mermaid Diagram Rendering ───────────────────────────────────────────────

MERMAID_CODE = r"""
flowchart TD
    A["<b>New Lead</b>"]
    A --> B["<b>Pending Enrichment</b>"]
    A --> EX["<b>Manual Exit States</b><br/>Responded · Meeting Booked<br/>Not Interested · Unsubscribed"]

    B --> C["<b>Pending Apollo</b><br/>enrichment needed"]
    C --> E["<b>Enriched</b><br/>email found"]
    C --> NR["<b>No Result</b><br/>No Email · No LinkedIn<br/>Manual Research Required"]

    E --> I["<b>Ready for Outreach</b><br/>has email + assigned"]
    I --> K["<b>Skipped</b><br/>No Email"]
    I --> J["<b>Email Sent</b><br/>Day 0"]

    J --> M["<b>Email Failed</b>"]
    J --> L["<b>Follow-Up 1 Sent</b><br/>Day 3"]

    L --> WA["<b>Warm — Email Opened</b>"]
    L --> N["<b>Follow-Up 2 Sent</b><br/>Day 7"]

    N --> WB["<b>Warm — Email Opened</b>"]
    N --> P["<b>Follow-Up 3 Sent</b><br/>Day 14"]

    P --> WC["<b>Warm — Email Opened</b><br/>Round 4 Closure"]
    P --> RC["<b>Cold — No Response</b><br/>Round 4 Closure"]

    classDef default fill:#f9f9f9,stroke:#aaa,stroke-width:1px,color:#111,font-size:14px
    classDef start fill:#e8f5e9,stroke:#2e7d32,stroke-width:2px,color:#1b5e20
    classDef pipeline fill:#e3f2fd,stroke:#1565c0,stroke-width:1px,color:#0d47a1
    classDef ready fill:#fffde7,stroke:#f57f17,stroke-width:2px,color:#333
    classDef sent fill:#ede7f6,stroke:#4527a0,stroke-width:1px,color:#1a237e
    classDef warm fill:#fbe9e7,stroke:#bf360c,stroke-width:1px,color:#333
    classDef cold fill:#eceff1,stroke:#455a64,stroke-width:1px,color:#263238
    classDef exit fill:#f3e5f5,stroke:#6a1b9a,stroke-width:1px,color:#333
    classDef fail fill:#ffebee,stroke:#b71c1c,stroke-width:1px,color:#333

    class A start
    class B,C pipeline
    class E,I,NR ready
    class J,L,N,P sent
    class WA,WB,WC warm
    class RC,K cold
    class EX exit
    class M fail
""".strip()


def render_mermaid_to_png(mermaid_code, output_path):
    """Render Mermaid diagram to PNG using mermaid.ink API"""
    print("Rendering Mermaid diagram to PNG...")
    
    # Base64 encode the diagram
    encoded = base64.urlsafe_b64encode(mermaid_code.encode('utf-8')).decode('ascii')
    
    # Use mermaid.ink API — narrow width forces taller vertical layout
    url = f"https://mermaid.ink/img/{encoded}?type=png&width=700&bgColor=white"
    
    response = requests.get(url, timeout=30)
    if response.status_code == 200 and response.headers.get('content-type', '').startswith('image'):
        with open(output_path, 'wb') as f:
            f.write(response.content)
        print(f"  Diagram saved to {output_path} ({len(response.content)} bytes)")
        return True
    else:
        print(f"  Warning: mermaid.ink returned status {response.status_code}")
        # Fallback: try without query params
        url2 = f"https://mermaid.ink/img/{encoded}"
        response2 = requests.get(url2, timeout=30)
        if response2.status_code == 200:
            with open(output_path, 'wb') as f:
                f.write(response2.content)
            print(f"  Diagram saved (fallback) to {output_path} ({len(response2.content)} bytes)")
            return True
        print(f"  Failed to render diagram. Status: {response2.status_code}")
        return False


# ─── Markdown-to-Word Conversion (adapted from convert_to_word.py) ───────────

def add_heading(doc, text, level):
    heading = doc.add_heading(text, level=level)
    heading.alignment = WD_ALIGN_PARAGRAPH.LEFT
    return heading


def add_code_block(doc, code_text):
    para = doc.add_paragraph(code_text)
    para.style = 'Normal'
    for run in para.runs:
        run.font.name = 'Consolas'
        run.font.size = Pt(9)
    para.paragraph_format.left_indent = Inches(0.5)
    para.paragraph_format.space_before = Pt(6)
    para.paragraph_format.space_after = Pt(6)
    return para


def process_inline_formatting(text):
    text = re.sub(r'\*\*(.+?)\*\*', r'\1', text)
    text = re.sub(r'__(.+?)__', r'\1', text)
    text = re.sub(r'\*(.+?)\*', r'\1', text)
    text = re.sub(r'_(.+?)_', r'\1', text)
    text = re.sub(r'`(.+?)`', r'\1', text)
    text = re.sub(r'\[(.+?)\]\(.+?\)', r'\1', text)
    return text


def add_inline_formatting(para, text):
    pattern = r'(\*\*.*?\*\*|\*.*?\*|`.*?`|__.*?__|_.*?_|\[.*?\]\(.*?\))'
    parts = re.split(pattern, text)
    
    for part in parts:
        if not part:
            continue
        if part.startswith('**') and part.endswith('**'):
            run = para.add_run(part[2:-2])
            run.bold = True
        elif part.startswith('__') and part.endswith('__'):
            run = para.add_run(part[2:-2])
            run.bold = True
        elif part.startswith('*') and part.endswith('*') and not part.startswith('**'):
            run = para.add_run(part[1:-1])
            run.italic = True
        elif part.startswith('_') and part.endswith('_') and not part.startswith('__'):
            run = para.add_run(part[1:-1])
            run.italic = True
        elif part.startswith('`') and part.endswith('`'):
            run = para.add_run(part[1:-1])
            run.font.name = 'Consolas'
            run.font.size = Pt(10)
        elif part.startswith('[') and '](' in part:
            match = re.match(r'\[(.*?)\]\((.*?)\)', part)
            if match:
                run = para.add_run(match.group(1))
                run.font.color.rgb = RGBColor(0, 0, 255)
                run.underline = True
        else:
            para.add_run(part)


def add_formatted_text_paragraph(doc, text):
    para = doc.add_paragraph()
    add_inline_formatting(para, text)


def add_table_to_doc(doc, table_lines):
    if not table_lines:
        return
    rows = []
    for line in table_lines:
        cells = [cell.strip() for cell in line.split('|')]
        cells = [c for c in cells if c]
        if cells:
            rows.append(cells)
    if not rows:
        return
    
    num_cols = len(rows[0])
    table = doc.add_table(rows=len(rows), cols=num_cols)
    table.style = 'Light Grid Accent 1'
    
    for i, row_data in enumerate(rows):
        for j, cell_data in enumerate(row_data):
            if j < num_cols:
                cell = table.rows[i].cells[j]
                cell.text = process_inline_formatting(cell_data)
                if i == 0:
                    for paragraph in cell.paragraphs:
                        for run in paragraph.runs:
                            run.bold = True


def parse_markdown_line(doc, line):
    line = line.rstrip()
    
    if not line.strip():
        doc.add_paragraph()
        return 'normal'
    
    if line.startswith('#'):
        level = len(line) - len(line.lstrip('#'))
        text = line.lstrip('#').strip()
        add_heading(doc, text, level=min(level, 9))
        return 'normal'
    
    if line.strip() in ['---', '___', '***']:
        doc.add_paragraph('_' * 80)
        return 'normal'
    
    if line.strip().startswith('```'):
        return 'code'
    
    if re.match(r'^[\s]*[-*+]\s', line):
        indent_level = len(line) - len(line.lstrip())
        text = re.sub(r'^[\s]*[-*+]\s', '', line)
        text = process_inline_formatting(text)
        para = doc.add_paragraph(text, style='List Bullet')
        if indent_level > 2:
            para.paragraph_format.left_indent = Inches(0.5 * (indent_level // 2))
        return 'normal'
    
    if re.match(r'^[\s]*\d+\.\s', line):
        text = re.sub(r'^[\s]*\d+\.\s', '', line)
        text = process_inline_formatting(text)
        doc.add_paragraph(text, style='List Number')
        return 'normal'
    
    if '|' in line and line.count('|') > 2:
        return 'table'
    
    if line.strip().startswith('>'):
        text = line.strip()[1:].strip()
        para = doc.add_paragraph(text)
        para.paragraph_format.left_indent = Inches(0.5)
        para.style = 'Intense Quote'
        return 'normal'
    
    if '**' in line or '__' in line:
        add_formatted_text_paragraph(doc, line)
        return 'normal'

    # Checkbox lines  - [x] or - [ ]
    if re.match(r'^[\s]*-\s*\[[ xX]\]\s', line):
        checked = bool(re.match(r'^[\s]*-\s*\[[xX]\]', line))
        text = re.sub(r'^[\s]*-\s*\[[ xX]\]\s*', '', line)
        prefix = "✓ " if checked else "☐ "
        text = process_inline_formatting(text)
        para = doc.add_paragraph(prefix + text, style='List Bullet')
        if checked:
            for run in para.runs:
                run.font.color.rgb = RGBColor(0, 128, 0)
        return 'normal'

    para = doc.add_paragraph()
    add_inline_formatting(para, line)
    return 'normal'


def convert_system_overview(md_file, docx_file, diagram_png):
    """Convert system-overview.md to Word, replacing the Lead Lifecycle code block with a PNG diagram."""
    print(f"Converting {md_file} to {docx_file}...")
    
    doc = Document()
    
    for section in doc.sections:
        section.top_margin = Inches(1)
        section.bottom_margin = Inches(1)
        section.left_margin = Inches(1)
        section.right_margin = Inches(1)
    
    with open(md_file, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    
    mode = 'normal'
    code_buffer = []
    table_buffer = []
    skip_lifecycle_code_block = False
    lifecycle_code_block_started = False
    
    # Detect the lead lifecycle section so we can replace it with the PNG
    i = 0
    while i < len(lines):
        line = lines[i]
        
        # ── Detect "Lead Lifecycle" heading followed by a code block ──
        if 'Lead Lifecycle' in line and line.strip().startswith('#'):
            add_heading(doc, line.lstrip('#').strip(), level=min(line.count('#', 0, line.index('L')), 9))
            i += 1
            
            # Skip blank lines until we hit the code block
            while i < len(lines) and lines[i].strip() == '':
                i += 1
            
            # Check if next line is a code block start
            if i < len(lines) and lines[i].strip().startswith('```'):
                # Skip the entire code block
                i += 1
                while i < len(lines) and not lines[i].strip().startswith('```'):
                    i += 1
                if i < len(lines):
                    i += 1  # skip closing ```
                
                # Insert the diagram image instead
                if os.path.exists(diagram_png):
                    doc.add_paragraph()  # spacing
                    para = doc.add_paragraph()
                    para.alignment = WD_ALIGN_PARAGRAPH.CENTER
                    run = para.add_run()
                    run.add_picture(diagram_png, width=Inches(5.0))
                    
                    # Add caption
                    caption = doc.add_paragraph("Figure: Lead Lifecycle Status Flow")
                    caption.alignment = WD_ALIGN_PARAGRAPH.CENTER
                    caption.runs[0].italic = True
                    caption.runs[0].font.size = Pt(10)
                    caption.runs[0].font.color.rgb = RGBColor(100, 100, 100)
                    doc.add_paragraph()  # spacing
                else:
                    print(f"  Warning: Diagram PNG not found at {diagram_png}, inserting placeholder text")
                    doc.add_paragraph("[Diagram could not be rendered — see lead_lifecycle.mmd]")
            continue
        
        # ── Handle code blocks ──
        if line.strip().startswith('```'):
            if mode == 'code':
                code_text = ''.join(code_buffer)
                add_code_block(doc, code_text)
                code_buffer = []
                mode = 'normal'
            else:
                # Flush any pending table
                if mode == 'table' and table_buffer:
                    add_table_to_doc(doc, table_buffer)
                    table_buffer = []
                mode = 'code'
            i += 1
            continue
        
        if mode == 'code':
            code_buffer.append(line)
            i += 1
            continue
        
        # ── Handle tables ──
        if '|' in line and line.count('|') >= 2:
            if mode != 'table':
                mode = 'table'
                table_buffer = []
            if re.match(r'^\|[\s\-:]+\|', line.strip()):
                i += 1
                continue
            table_buffer.append(line)
            i += 1
            continue
        else:
            if mode == 'table' and table_buffer:
                add_table_to_doc(doc, table_buffer)
                table_buffer = []
                mode = 'normal'
        
        # ── Checkbox lines (- [x] / - [ ]) ──
        if re.match(r'^[\s]*-\s*\[[ xX]\]\s', line):
            checked = bool(re.match(r'^[\s]*-\s*\[[xX]\]', line))
            text = re.sub(r'^[\s]*-\s*\[[ xX]\]\s*', '', line).rstrip()
            prefix = "✓ " if checked else "☐ "
            text = process_inline_formatting(text)
            para = doc.add_paragraph(prefix + text, style='List Bullet')
            if checked:
                for run in para.runs:
                    run.font.color.rgb = RGBColor(0, 128, 0)
            i += 1
            continue
        
        # ── Strikethrough ~~text~~ in lines ──
        # (handled as normal text with removal)
        
        # ── Normal line processing ──
        parse_markdown_line(doc, line)
        i += 1
    
    # Flush remaining buffers
    if code_buffer:
        add_code_block(doc, ''.join(code_buffer))
    if table_buffer:
        add_table_to_doc(doc, table_buffer)
    
    doc.save(docx_file)
    print(f"Successfully created {docx_file}")


# ─── Main ────────────────────────────────────────────────────────────────────

if __name__ == "__main__":
    md_file = "system-overview.md"
    docx_file = "system-overview.docx"
    diagram_png = "lead_lifecycle.png"
    
    # Step 1: Render Mermaid diagram to PNG
    png_ok = render_mermaid_to_png(MERMAID_CODE, diagram_png)
    if not png_ok:
        print("Warning: Could not render diagram. Will proceed without it.")
    
    # Step 2: Convert markdown to Word with embedded diagram
    try:
        convert_system_overview(md_file, docx_file, diagram_png)
        print(f"\nConversion completed successfully!")
        print(f"  Output: {docx_file}")
        if png_ok:
            print(f"  Diagram: {diagram_png} (embedded in document)")
    except Exception as e:
        print(f"\nError during conversion: {e}")
        import traceback
        traceback.print_exc()
