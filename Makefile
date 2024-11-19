CFLAGS = -Wall -g
OBJECTS = main.o file1.o file2.o file3.o file4.o

all: program

program: $(OBJECTS)
	$(CC) $(CFLAGS) -o program $(OBJECTS)

main.o: main.c functions.h
	$(CC) $(CFLAGS) -c main.c

file1.o: file1.c functions.h
	$(CC) $(CFLAGS) -c file1.c

file2.o: file2.c functions.h
	$(CC) $(CFLAGS) -c file2.c

file3.o: file3.c functions.h
	$(CC) $(CFLAGS) -c file3.c

file4.o: file4.c functions.h
	$(CC) $(CFLAGS) -c file4.c

clean:
	rm -f *.o program

