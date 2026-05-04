CC      := clang
CFLAGS  := -std=gnu11 -Wall -Wextra -g
TARGET  := db
SRC     := main.c
DB_FILE := mydb.db

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

run: $(TARGET)
	./$(TARGET) $(DB_FILE)

clean:
	rm -f $(TARGET) a.out $(DB_FILE)

.PHONY: run clean
