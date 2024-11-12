date := $(shell date +%Y%m%d%H%M)
default: zip

.PHONY: all
all: clean zip

.PHONY: clean
clean:
	@rm -f Bookmarks_and_History_Search.alfredworkflow

.PHONY: zip
zip:
	chmod 755 src/py3.sh
	zip Bookmarks_and_History-$(date).alfredworkflow -j src/*

