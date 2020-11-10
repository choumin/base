CC=gcc
ROOT_DIR=$(shell pwd)
CFLAG=-I$(ROOT_DIR)/
TIMER_BIN=timer
SRC=$(ROOT_DIR)/timer.c

all:$(TIMER_BIN)

$(TIMER_BIN): ECHO
	$(CC) -o $@ $(SRC) $(CFLAG)

ECHO:
	@echo $(ROOT_DIR)


.PHONY: clean

clean:
	@rm $(ROOT_DIR)/*.o
	@rm $(ROOT_DIR)/$(TIMER_BIN)
