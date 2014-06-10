all: index.html 

index.html: index.md bootstrap.css
	pandoc --smart --standalone --section-divs -c bootstrap.css --from markdown --to html -o index.html index.md

clean:
	rm -f *.html *.pdf *.docx *.txt
