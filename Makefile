CC = gcc
CFLAGS = -Wall -Wextra -std=c99
LIBS = -lcs50
EXECUTABLE = points

all: $(EXECUTABLE)
	@make run EXECUTABLE=$(EXECUTABLE)
	
$(EXECUTABLE): $(EXECUTABLE).c
	@$(CC) $(CFLAGS)  -o $@ $< $(LIBS)
	@make run EXECUTABLE=$(EXECUTABLE)

run: $(EXECUTABLE)
	@	./$(EXECUTABLE)
	@make clean EXECUTABLE=$(EXECUTABLE)

clean:
	@rm -f $(EXECUTABLE)

.PHONY: all run clean