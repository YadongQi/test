CFLAGS=-I. -static
OBJ = test.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

test: $(OBJ)
	$(LD) -static -T linker.lds -o $@ $^

all: test

clean:
	rm *.o test
