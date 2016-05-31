VERSION=1.1
FILENAME=AlternativeBaseCosts.$(VERSION)

all:
	grfcodec -e altbasecosts
	mv altbasecosts.grf export/altbasecosts.grf
	rm -f altbasecosts.bak
	mkdir -p $(FILENAME)
	cp export/* $(FILENAME)/
	tar cf $(FILENAME).tar $(FILENAME)/
	rm -rf $(FILENAME)
