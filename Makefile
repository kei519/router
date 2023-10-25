OBJS=pcap.o analyze.o checksum.o print.o
SRCS=$(OBJS:%.o=%.c)
CFLAGS=-g -Wall -D_DEFAULT_SOURCE
LDLIBS=
TARGET=pcap
$(TARGET):$(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(TARGET) $(OBJS) $(LDLIBS)