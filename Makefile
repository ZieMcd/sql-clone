CC      := clang
CFLAGS  := -std=gnu11 -Wall -Wextra -g
TARGET  := db
SRC     := main.c

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET) a.out

.PHONY: run clean
