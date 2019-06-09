FOOTPRINT_DIRS := $(shell find . -type d -name *.pretty | grep -vi example)
SYMBOL_FILES := $(shell find . -type f -name *.lib | grep -vi example)

default: fp-lib-table sym-lib-table

fp-lib-table: $(FOOTPRINT_DIRS) scripts/build_library.py
	scripts/build_library.py footprint > $@

sym-lib-table: $(SYMBOL_FILES) scripts/build_library.py
	scripts/build_library.py symbol > $@

$(FOOTPRINT_DIRS):
	git submodule update --recursive

$(SYMBOL_FILES):
	git submodule update --recursive

clean:
	rm fp-lib-table
	rm sym-lib-table
