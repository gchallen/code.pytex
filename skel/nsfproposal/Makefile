START = xxxnote
END = missing
CLASS = $(PYTEX)/cls/nsfproposal.cls
SPLIT_TARGETS = summary-separate justification-separate facilities-separate data-separate personnel-separate collaborators-separate collaboration-separate description-separate.pdf references-separate.pdf

DESCRIPTION_END = 15
REFERENCES_START = $(shell echo $(DESCRIPTION_END) + 1 | bc)

all: proposal $(SPLIT_TARGETS) wc SUMMARY
	@$(MAKE) -C biosketches
	@$(MAKE) -C currentandpending

description-separate.pdf: description-split.pdf
	pdfjam description-split.pdf '1-$(DESCRIPTION_END)' --outfile description-separate.pdf

references-separate.pdf: description-split.pdf
	pdfjam description-split.pdf '$(REFERENCES_START)-' --outfile references-separate.pdf

figures:
	@cd figures ; make

SUMMARY: summary.tex
	@$(PYTEX)/bin/clean $< $@

wc: summary.tex
	@$(PYTEX)/bin/wc $< -

# 16 Nov 2010 : GWA : Add other cleaning rules here.

clean: rulesclean
	@$(MAKE) -C biosketches clean 
	@$(MAKE) -C currentandpending clean

include $(PYTEX)/make/Makerules
