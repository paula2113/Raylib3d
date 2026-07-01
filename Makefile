# ===== CONFIG =====
CXX = g++
TARGET = bin/game.exe
SRC = src/main.cpp

CXXFLAGS = -std=c++17 -Wall -g
LDFLAGS = -lraylib -lopengl32 -lgdi32 -lwinmm

# ===== RULES =====
# Forzamos limpiar antes de compilar para asegurar que los símbolos se actualicen
all: clean $(TARGET)

$(TARGET): $(SRC)
	@echo Compilando modo Debug...
	mkdir -p bin
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET) $(LDFLAGS)

run: all
	./$(TARGET)

clean:
	rm -rf bin
