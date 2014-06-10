all: index_for_pdf.html index.pdf index.docx index.txt

index_for_pdf.html: index_for_pdf.md bootstrap.css
	pandoc --smart --standalone --section-divs -c bootstrap.css --from markdown --to html -o index_for_pdf.html index_for_pdf.md

index.pdf: index_for_pdf.html
	wkhtmltopdf index_for_pdf.html index.pdf

index.docx: index_for_pdf.md
	pandoc --from markdown --to docx -o index.docx index_for_pdf.md

index.txt: index_for_pdf.md
	pandoc --standalone --smart --from markdown --to plain -o index.txt index_for_pdf.md

clean:
	rm -f *.html *.pdf *.docx *.txt
