pdf:
	cd latex/tex; xelatex costoffreedom.tex

epub:
	sh bin/create_ebook.sh

tex:
	bin/convert_to_tex.sh

clean:
	latexmk -CA
