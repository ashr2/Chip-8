SRC_DIR = src
BUILD_DIR = build/debug
CC = gcc
SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
OBJ_NAME = play
INCLUDE_PATHS = -Iinclude -I/opt/homebrew/include/SDL2
LIBRARY_PATHS = -L/opt/homebrew/Cellar/sdl2/2.28.1/lib
COMPILER_FLAGS = -std=c11 -Wall -O0 -g $(INCLUDE_PATHS)
LINKER_FLAGS = -lsdl2

all:
	$(CC) $(COMPILER_FLAGS) $(LINKER_FLAGS) $(INCLUDE_PATHS) $(LIBRARY_PATHS) $(SRC_FILES) -o $(BUILD_DIR)/$(OBJ_NAME)
