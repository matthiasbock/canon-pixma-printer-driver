#dirs = libs cngpij cngpijmon ppd pstocanonij 
dirs = libs cngpij cngpijmnt pstocanonij backend backendnet cngpijmon/cnijnpr

scripts=for dir in $(dirs); do\
			(cd $$dir; if [ ! -e Makefile ]; then ./autogen.sh; fi; make $$target)|| exit 1;\
		done

all :
	$(scripts)

clean :
	target=clean; $(scripts)

install :
	target=install; $(scripts)

