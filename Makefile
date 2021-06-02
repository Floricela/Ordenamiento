# La siguiente no es necesariamente requerida, se agrega para
# mostrar como funciona.

CC = gcc
CFLAGS = -g -Wall
SRC = Proyecto.c ordenamiento.c ordenamiento.h
OBJ = Proyecto.o ordenamiento.o


# Reglas explicitas

all: $(OBJ)
	$(CC) $(CFLAGS) -o Proyecto $(OBJ)
clean:
	$(RM) $(OBJ) main

# Reglas implicitas

ordenamiento.o: ordenamiento.c ordenamiento.h
Proyecto.o: Proyecto.c ordenamiento.h
