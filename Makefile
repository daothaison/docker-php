generate:
	@./generate.sh

clean:
	@./generate.sh clean
	@for versions in $$(ls versions_*.yml); do \
		./generate.sh clean $$versions; \
	done

all: clean generate
