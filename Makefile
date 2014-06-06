###########################################################
# Makefile for compiling the Federation AM API asciidoc   #
###########################################################

# Required software:
#   - asciidoc          (sudo apt-get install asciidoc)
#   - source-highlight  (sudo apt-get install source-highlight)
#   - compact theme for asciidoc. To install
#       - wget http://powerman.name/download/asciidoc/compact-1.3.zip && asciidoc --theme install compact-1.3.zip
#       - or for older asciidoc versions: copy the compact.css inside that zip to /etc/asciidoc/stylesheets/compact.css


HTML = federation-am-api.html general.html rspec.html credential-sfa.html credential-abac.html

all: $(HTML)

clean:
	rm -f $(HTML)

#dependencies (includes) for federation-am-api.adoc
federation-am-api.html: federation-am-api.adoc call-allocate.adoc call-basics.adoc call-delete.adoc call-describe.adoc call-getversion.adoc call-listresources.adoc call-performoperationalaction.adoc call-provision.adoc call-renew.adoc call-shutdown.adoc call-status.adoc

%.html: %.adoc
	asciidoc -a theme=compact -a data-uri -a icons -a toc2 -a toclevels=3 $(<F)

.PHONY: all clean

