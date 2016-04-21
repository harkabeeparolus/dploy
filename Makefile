default: lint test

.PHONY: all
all: clean lint test

.PHONY: clean
clean:
	git clean -x -d --force

.PHONY: lint
lint:
	pylint dploy setup.py tests/*

.PHONY: test
test:
	py.test

.PHONY: install-requirments
install-req:
	python3 -m pip install -r requirments.txt
