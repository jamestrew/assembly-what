SRC = asem.s
OBJ = asem.o
EXE = asem

ASFLAGS =
GCCFLAGS = -nostdlib -static

.PHONY: all clean


all: $(EXE)

$(OBJ): $(SRC)
	as $(ASFLAGS) $< -o $@

$(EXE): $(OBJ)
	gcc $(GCCFLAGS) -o $@ $<

clean:
	rm -f $(EXE) $(OBJ)


