###########################################################
# Makefile for compiling the Federation AM API asciidoc   #
###########################################################

HTML = federation-am-api.html

all: $(HTML)

clean:
	rm -f $(HTML)

%.html: %.adoc
	asciidoc -a theme=compact -a data-uri -a icons -a toc2 $(<F)

.PHONY: all clean

