CC = gcc -fanalyzer
CFLAGS := -std=c99 -Wall -Wextra -Werror -pedantic -Imodules -MMD -MP
LDFLAGS = -lGL -lGLU -lglut -lm

all: ray

.PHONY: clean all

# Main program files

%: %.c
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

clean:
	rm -f ray

-include $(wildcard build/*.d)
