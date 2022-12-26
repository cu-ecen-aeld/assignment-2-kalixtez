CROSS_COMPILE = 

build: writer.o
	$(CROSS_COMPILE)gcc -o writer writer.o

writer.o: writer.c
	$(CROSS_COMPILE)gcc -c -o writer.o writer.c

clean:
	rm writer.o