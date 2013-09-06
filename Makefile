CC := gcc
CFLAGS := -g -Wall -O0

TARGET := weiyunfs.mount

all: $(TARGET)

weiyunfs.mount:
	$(CC) $(CFLAGS) `pkg-config --libs fuse` `pkg-config --cflags fuse `-o $(TARGET) weiyunfs.c
