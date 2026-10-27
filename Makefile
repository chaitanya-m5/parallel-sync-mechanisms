CC = gcc
CFLAGS = -Wall -Wextra -O2 -fopenmp
LDFLAGS = -pthread

SRC_DIR = src
BIN_DIR = bin

TARGETS = $(BIN_DIR)/race $(BIN_DIR)/critical $(BIN_DIR)/atomic $(BIN_DIR)/barrier $(BIN_DIR)/semaphore $(BIN_DIR)/compare_sync

all: $(BIN_DIR) $(TARGETS)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(BIN_DIR)/semaphore: $(SRC_DIR)/semaphore.c
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

$(BIN_DIR)/%: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf $(BIN_DIR)

.PHONY: all clean
