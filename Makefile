# Makefile template for shared library

CC = clang # C compiler
CFLAGS = -fPIC -Wall -Wextra -O2 -g # C flags
LDFLAGS = -dynamiclib # linking flags
RM = rm -f # rm command
TARGET_LIB = libghttp.dylib # target lib

SRCS = ghttp.c http_base64.c http_date.c http_hdrs.c http_req.c http_resp.c http_trans.c http_uri.c # source files
OBJS = $(SRCS:.c=.o)

.PHONY: all
	all: $(TARGET_LIB)

$(TARGET_LIB):
	$(CC) $(LDFLAGS) $(CFLAGS) $(SRCS) -o $@

.PHONY: clean
clean:
	$(RM) $(TARGET_LIB) $(OBJS)
