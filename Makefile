pdf:
	bin/convert_to_tex.sh
	cd tex; pdflatex costoffreedom.tex

epub:
	sh bin/create_ebook.sh

clean:
	cd tex; rm -rf chapters; latexmk -CA
