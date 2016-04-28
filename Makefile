pdf:
	bin/convert_to_tex.sh
	cd latex/tex; xelatex costoffreedom.tex

epub:
	sh bin/create_ebook.sh

clean:
	cd latex/tex; rm -rf chapters; latexmk -CA
