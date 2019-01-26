CFLAGS+= -W -Wall -O2 -std=c99 -g -pedantic
CFLAGS+= -I/usr/local/include
LDFLAGS+= -L/usr/local/lib
LDFLAGS+= -lmarkdown 
LDFLAGS+= -lnanomsg

all: vib 

vib: main.c  
	$(CC) $(CFLAGS) -o $@ main.c $(LDFLAGS)


# TEST 
test_viv: $@.c
	$(CC) $(CFLAGS) -o $@ $@.c $(LDFLAGS)

test:
	@echo CURDIR:${.CURDIR}
	@echo TARGET:$@ [should be 'test']
	@echo CFLAGS: $(CFLAGS)
	@echo LDFLAGS: ${LDFLAGS}

indent:
	@echo "indenting all code..."
	./indent-all.sh

clean:
	rm -rf vib
	rm -rf a.out *.BAK *.core

.PHONY: test clean indent 

