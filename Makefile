CC = gcc
CFLAGS = -Wall -Wextra -std=c99
LIBS = -lcs50
v = buggy

all: $(v)
	@make run v=$(v)
	
$(v): $(v).c
	@$(CC) $(CFLAGS)  -o $@ $< $(LIBS)
	@make run v=$(v)

run: $(v)
	@	./$(v)
	@make clean v=$(v)

clean:
	@rm -f $(v)

.PHONY: all run clean