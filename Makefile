APP_NAME = build
BUILD_DIR = ./bin
C_FILES = ./src/*.cpp
GLAD_FILE = ./src/glad.c

APP_DEFINES :=
APP_INCLUDES:= -I/usr/local/include -framework Cocoa -framework OpenGL -framework IOKit
APP_LINKERS:= -L/usr/local/lib/ -lglfw3 -v

build:
	clang++ $(C_FILES) $(GLAD_FILE) -o $(BUILD_DIR)/$(APP_NAME) $(APP_INCLUDES) $(APP_LINKERS)