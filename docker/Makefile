IMAGE_NAME:=sphinx-aafig
.PHONY: clean image build html

all:	html

include MakefileBase.mak

html:	build
	$(call run_in_container,$@)

build: image
	$(call run_in_container,$@)


