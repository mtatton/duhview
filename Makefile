# These are the production settings
CC=gcc -O2 -s -Wall
STRIP=strip
LIBS=-lncurses

# I use these to debug
#CC=g++ -g -O0
#STRIP=ls
#LIBS=-lncurses_g
#LIBS=-lncurses

all:	duhview

install:
	sudo cp ./duhview /usr/local/bin

duhview:	cleanduhview
	$(CC) -o duhview duhview.c $(LIBS)
	$(STRIP) duhview

cleanduhview:	
	rm -f duhview

clean:	cleanduhview
	rm -f *~
	rm -f *.swp
	rm -f .*.swp
