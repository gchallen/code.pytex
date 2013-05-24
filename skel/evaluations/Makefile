START = xxxnote
END = missing
CLASS = $(PYTEX)/cls/ubletter.cls
TARGETS = template_form.pdf

all: $(TARGETS)
	@:

%_form.pdf: %.pdf
	@pdftk $< cat 1 output 1.pdf
	@pdftk 1.pdf background figs/letter.pdf output 2.pdf
	@pdftk A=2.pdf B=$< cat A1 B2-end output $@
	@rm -f 1.pdf 2.pdf

# 16 Nov 2010 : GWA : Add other cleaning rules here.

clean: rulesclean
	@rm -f $(TARGETS)

include $(PYTEX)/make/Makerules

.PHONY: all clean
