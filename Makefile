pdf:
	bin/convert_to_tex.sh
	cd tex; make build

clean:
	cd tex; make clean
