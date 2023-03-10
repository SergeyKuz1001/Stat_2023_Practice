.PHONY: build
build: README.md

README.md: README.Rmd
	Rscript -e "require(knitr); knit('$^', '$@')"
