pdf:
	bin/convert_to_tex.sh
	cd tex; make build

epub:
	sh bin/create_ebook.sh

clean:
	cd tex; make clean
