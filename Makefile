###########################################################
# Makefile for compiling the Federation AM API asciidoc   #
###########################################################

HTML = federation-am-api.html

all: $(HTML)

clean:
	rm -f $(HTML)

#dependencies (includes) for federation-am-api.adoc
federation-am-api.html: federation-am-api.adoc call-allocate.adoc call-basics.adoc call-delete.adoc call-describe.adoc call-getversion.adoc call-listresources.adoc call-performoperationalaction.adoc call-provision.adoc call-renew.adoc call-shutdown.adoc call-status.adoc

%.html: %.adoc
	asciidoc -a theme=compact -a data-uri -a icons -a toc2 $(<F)

.PHONY: all clean

