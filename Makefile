###########################################################
# Makefile for compiling the Federation AM API asciidoc   #
###########################################################

HTML = federation-am-api.html

all: checker $(HTML)

clean:
	rm -f $(HTML)

checker:
	@bin="asciidoc" && command -v $$bin > /dev/null || (echo "ERROR: Please install '$$bin' first." && exit 1)
	@bin="source-highlight" && command -v $$bin > /dev/null || (echo "ERROR: Please install '$$bin' first." && exit 1)

%.html: %.adoc
	asciidoc -a theme=compact -a data-uri -a icons -a toc2 $(<F)

.PHONY: all clean

