SRCS = $(wildcard *.c)
OBJS = $(SRCS:%.c=%.o)
ASMS = $(SRCS:%.c=%.s)
PRG  = hello

CFLAGS  = -Wall

all:	$(OBJS)
	$(CC) -o $(PRG) $(OBJS) $(LDFLAGS)

asm:	$(ASMS)

clean:
	rm -f $(PRG) $(OBJS) $(ASMS)

%.s: %.c
	$(CC) -S $<
