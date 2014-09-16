SHELL        = /bin/sh
CC           = clang
CFLAGS       = -dynamiclib -fPIC -pedantic -Wall -Wextra -march=native
DEBUGFLAGS   = -O0 -g
RELEASEFLAGS = -O3 -g

TARGET  = libHTTPClient.dylib
SOURCES = $(shell echo API/*.c)

# PREFIX = $(DESTDIR)/usr/local
# BINDIR = $(PREFIX)/bin

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(FLAGS) $(CFLAGS) $(DEBUGFLAGS) -IAPI  $(SOURCES) -o $(TARGET)

clean:
	rm $(TARGET)
