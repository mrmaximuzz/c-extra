SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:

CSTANDARD ?= -std=c18
CWARNINGS ?= -Wall -Wextra -Wpedantic -Werror
OPTIMIZING ?= -O2
THREADS ?= -pthread
LINK ?= -latomic

sources := $(shell find . -name "*.c")
binaries := $(patsubst %.c,%,$(sources))


default: $(binaries)

%: %.c
	$(CC) $< -o $@ $(CSTANDARD) $(CWARNINGS) $(OPTIMIZING) $(THREADS) $(LINK)

clean:
	rm -rf $(binaries)
