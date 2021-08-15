OBJ = start.o read.o write.o echo.o

all: $(OBJ)
	ld -o echo -T echo.ld $(OBJ)

echo.o: echo.s
	as -o echo.o echo.s

start.o: start.s
	as -o start.o start.s

read.o: read.s
	as -o read.o read.s

write.o: write.s
	as -o write.o write.s

clean:
	rm $(OBJ) echo
