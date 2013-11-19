START = xxxnote
END = missing
CLASS = $(PYTEX)/cls/nsfcnsproposal.cls
SPLIT_TARGETS = summary-separate justification-separate facilities-separate data-separate personnel-separate collaborators-separate collaboration-separate description-separate.pdf references-separate.pdf

DESCRIPTION_END = 15
REFERENCES_START = $(shell echo $(DESCRIPTION_END) + 1 | bc)
SPLIT_DESCRIPTION = False

#all: proposal $(SPLIT_TARGETS) wc SUMMARY
#	@$(MAKE) -C biosketches
#	@$(MAKE) -C currentandpending
all: proposal

description-separate.pdf: description-split.pdf
ifeq ($(SPLIT_DESCRIPTION),True)
	pdfjam description-split.pdf '1-$(DESCRIPTION_END)' --outfile description-separate.pdf
else
endif

references-separate.pdf: description-split.pdf
ifeq ($(SPLIT_DESCRIPTION),True)
	pdfjam description-split.pdf '$(REFERENCES_START)-' --outfile references-separate.pdf
else
endif

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
