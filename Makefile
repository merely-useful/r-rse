.PHONY : all clean chapters commands crossrefs fixme gloss html links nbspref settings tex-packages

ALL_HTML=_book/index.html
ALL_PDF=_book/r-rse.pdf

#-------------------------------------------------------------------------------

all : commands

## commands : show all commands.
commands :
	@grep -h -E '^##' ${MAKEFILE_LIST} | sed -e 's/## //g' | column -t -s ':'

## everything : rebuild all HTML and PDF.
everything : ${ALL_HTML} ${ALL_PDF}

##   r-rse : rebuild RSE R HTML and PDF.
r-rse : _book/index.html _book/r-rse.pdf

#-------------------------------------------------------------------------------

## html           : build all HTML versions.
html : _book/index.html
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook', quiet = TRUE, encoding = 'UTF-8'); warnings()"

#-------------------------------------------------------------------------------

## pdf : build PDF version.
pdf : _book/r-rse.pdf
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book', quiet = TRUE, encoding = 'UTF-8'); warnings()"

#-------------------------------------------------------------------------------

## fixme : list all the FIXME markers
fixme :
	@fgrep -r -E "FIXME|TODO" .

# TODO: R script to check glossary definitions and links used.

# TODO: Add R script to add non-breaking space.

## tex-packages : install required LaTeX packages.
tex-packages :
	-tlmgr install $$(cat ./tex-packages.txt)
