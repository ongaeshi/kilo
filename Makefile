MRUBY_SRCS = $(wildcard mruby/src/*.c)

all: kilo

test:
	echo "$(SRCS)"

kilo: kilo.c
	$(CC) -o kilo kilo.c $(MRUBY_SRCS) -Imruby/include -Wall -W -pedantic -std=c99 -lm

clean:
	rm kilo
