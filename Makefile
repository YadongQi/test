CFLAGS=-I. -static
LDFLAGS=-static
OBJ = test.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

test: $(OBJ)
	$(LD) $(LDFLAGS) -T linker.lds -o $@ $^
