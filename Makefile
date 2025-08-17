TESTS_INIT=tests/minimal_init.lua
TESTS_DIR=tests/

.PHONY: test

format:
	stylua .

lint:
	@luacheck .

