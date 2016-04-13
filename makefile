OBJS = crypto_random.o magiccrypt.o
CC = g++
DEBUG = -g
CFLAGS = -Wall -c ${DEBUG}
LFLAGS = -Wall ${DEBUG}

magiccrypt : ${OBJS}
	${CC} ${LFLAGS} ${OBJS} -o magiccrypt

crypto_random.o : crypto_random.c crypto_random.h
	${CC} ${CFLAGS} crypto_random.c

magiccrypt.o : magiccrypt.c magiccrypt.h crypto_random.h
	${CC} ${CFLAGS} magiccrypt.c