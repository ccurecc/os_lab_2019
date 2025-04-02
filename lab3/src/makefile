CC = gcc
CFLAGS = -Wall -Wextra #-Werror
TARGETS = sequential_min_max parallel_min_max
OBJS = find_min_max.o utils.o

all: $(TARGETS)

sequential_min_max: sequential_min_max.o $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

parallel_min_max: parallel_min_max.o $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(TARGETS) *.o

.PHONY: all clean