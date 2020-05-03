WINDOWS = no
  
CC=gcc
COMPILE_OPTS= -Wall -Wextra -g -std=gnu11
OPTIM_OPTS= -O3
SANITIZERS= -fsanitize=address -fsanitize=undefined
LIBS=-lm -lSDL2

psh: psh.o
	$(CC) $^ -o $@ $(LIBS) $(SANITIZERS) 

psh.o: psh.c
	$(CC) $(COMPILE_OPTS) $(OPTIM_OPTS) $(SANITIZERS) -c $^
