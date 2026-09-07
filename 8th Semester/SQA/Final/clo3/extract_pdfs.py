import pdfplumber
import os
import re

def extract_text_from_pdf(pdf_path):
    """Extract all text from a PDF file."""
    text = ""
    with pdfplumber.open(pdf_path) as pdf:
        for i, page in enumerate(pdf.pages):
            page_text = page.extract_text()
            if page_text:
                text += f"\n\n--- Page {i+1} ---\n\n"
                text += page_text
    return text

def clean_text(text):
    """Clean up extracted text."""
    text = re.sub(r'\n{3,}', '\n\n', text)
    return text.strip()

def main():
    current_dir = r"d:\Sir Syed University\8th Semester\SQA\Final\clo3"
    
    # Exact mapping: PDF filename -> desired output markdown filename
    pdf_to_md = {
        "week-4-s1-and-s2.pdf": "week4.md",
        "week-5-s2.pdf": "week5.md",
        "week-10-session-1.pdf": "week10-part1.md",
        "week-10-session-2.pdf": "week10-part2.md",
        "week-11-session-1.pdf": "week11-part1.md",
        "week-11-session-2.pdf": "week11-part2.md",
        "week-12-session-1.pdf": "week12-part1.md",
        "week-12-session-2.pdf": "week12-part2.md",
        "week-14.pdf": "week14.md",
        "week-15.pdf": "week15.md",
    }
    
    for pdf_name, md_name in pdf_to_md.items():
        pdf_path = os.path.join(current_dir, pdf_name)
        md_path = os.path.join(current_dir, md_name)
        
        if not os.path.exists(pdf_path):
            print(f"File not found: {pdf_path}")
            continue
        
        print(f"Processing: {pdf_name} -> {md_name}")
        
        text = extract_text_from_pdf(pdf_path)
        text = clean_text(text)
        
        if not text:
            print(f"  WARNING: No text extracted from {pdf_name}")
            continue
        
        with open(md_path, 'w', encoding='utf-8') as f:
            f.write(f"# {pdf_name}\n\n")
            f.write(f"Source: `{pdf_name}`\n\n")
            f.write("---\n\n")
            f.write(text)
        
        print(f"  Created: {md_name}")

if __name__ == "__main__":
    main()