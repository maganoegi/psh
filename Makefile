WINDOWS = no
  
CC=gcc
COMPILE_OPTS= -Wall -Wextra -g -std=gnu11
OPTIM_OPTS= -O3
SANITIZERS= -fsanitize=address -fsanitize=undefined -lreadline
LIBS=-lm -lSDL2

c_shell: c_shell.o
	$(CC) $^ -o $@ $(LIBS) $(SANITIZERS) 

c_shell.o: c_shell.c 
	$(CC) $(COMPILE_OPTS) $(OPTIM_OPTS) $(SANITIZERS) -c $^
