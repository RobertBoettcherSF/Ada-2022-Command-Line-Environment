GNAT    := gnatmake
FLAGS   := -gnata -gnatwa -gnat2022
OBJ_DIR := obj
BIN_DIR := bin

.PHONY: all test clean

all: $(BIN_DIR)/tests

$(BIN_DIR)/tests: *.ads *.adb *.gpr
	mkdir -p $(OBJ_DIR) $(BIN_DIR)
	$(GNAT) $(FLAGS) -Pcli_env_topic.gpr

test: all
	@echo "Running tests..."
	@$(BIN_DIR)/tests
	@echo "Running with sample args..."
	@$(BIN_DIR)/tests alpha beta

clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)
