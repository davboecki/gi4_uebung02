CC = gcc                # GNU C-Compiler benutzen
CFLAGS = -Wall -g       # Compilerflags
LDFLAGS =               # keine Linkerflags

#task 1.5: add .PHONY to avoid conflicts with files named all, clean, install
.PHONY: all clean install

all: edit

edit: main.o input.o
	$(CC) $(LDFLAGS) -o edit main.o input.o
	
#task 1.3: input.c hinzugefügt
main.o: main.c input.c utils.h types.h defs.h
	$(CC) $(CFLAGS) -c main.c
	
input.o: input.c
	$(CC) $(CFLAGS) -c input.c

#task 1.4
clean:
	rm edit main.o input.o
	
install:
	cp edit /usr/bin/
	chmod 555 /usr/bin/edit
