.PHONY : all clean chapters commands crossrefs fixme gloss html links nbspref settings tex-packages

INDEX_HTML=_book/index.html
ALL_HTML=_book/py-novice/index.html _book/r-novice/index.html _book/py-rse/index.html _book/r-rse/index.html
ALL_PDF=_book/py-novice/py-novice.pdf _book/r-novice/r-novice.pdf _book/py-rse/py-rse.pdf _book/r-rse/r-rse.pdf
EXTRA=climate-data data src zipf

R_RSE_FILES=\
  index.Rmd \
  r-rse/bash-basics.Rmd \
  r-rse/bash-advanced.Rmd \
  r-rse/git-cmdline.Rmd \
  r-rse/git-advanced.Rmd \
  r-rse/style.Rmd \
  r-rse/automate.Rmd \
  r-rse/teams.Rmd \
  r-rse/project.Rmd \
  r-rse/ci.Rmd \
  r-rse/package-r.Rmd \
  r-rse/correct.Rmd \
  r-rse/publish.Rmd \
  r-rse/finale.Rmd \
  r-rse/objectives.Rmd \
  r-rse/keypoints.Rmd \
  r-rse/solutions.Rmd \
  r-rse/yaml.Rmd \
  r-rse/ssh.Rmd

COMMON_FILES=\
  _common.R \
  appendix.Rmd \
  LICENSE.md \
  CONDUCT.md \
  CONTRIBUTING.md \
  gloss.md \
  references.Rmd \
  links.md \
  book.bib \
  preamble.tex

ALL_FILES=${R_RSE_FILES} ${COMMON_FILES}

#-------------------------------------------------------------------------------

all : commands

## commands : show all commands.
commands :
	@grep -h -E '^##' ${MAKEFILE_LIST} | sed -e 's/## //g' | column -t -s ':'

## everything : rebuild all HTML and PDF.
everything : ${INDEX_HTML} ${ALL_HTML} ${ALL_PDF}

##   r-rse : rebuild RSE R HTML and PDF.
r-rse : _book/r-rse/index.html _book/r-rse/r-rse.pdf

#-------------------------------------------------------------------------------

## html           : build all HTML versions.
html : ${ALL_HTML}

##   r-rse-html : build RSE R HTML.
r-rse-html : _book/index.html

_book/index.html : ${R_RSE_FILES} ${COMMON_FILES} ${INDEX_HTML}
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook', quiet = TRUE)"

${INDEX_HTML} : ./_index.html
	mkdir -p _book
	cp ./_index.html ${INDEX_HTML}
	cp -r ${EXTRA} _book

#-------------------------------------------------------------------------------

## pdf : build PDF version.
pdf : ${ALL_PDF} ${INDEX_HTML}

##   r-rse-pdf : build RSE R PDF.
r-rse-pdf : _book/r-rse.pdf

_book/r-rse.pdf : ${R_RSE_FILES} ${COMMON_FILES}
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book', quiet = TRUE)"

#-------------------------------------------------------------------------------

## crossrefs : check cross-references.
crossrefs :
	@bin/crossrefs.py "RSE R" ${R_RSE_FILES} ${COMMON_FILES}

## fixme : list all the FIXME markers
fixme :
	@fgrep FIXME ${ALL_FILES}

## gloss : check that all glossary definitions are defined and used.
gloss :
	@bin/gloss.py ./gloss.md ${ALL_FILES}

## images : check that all images are defined and used.
images :
	@bin/images.py ./figures ${ALL_FILES}

## links : check that all links are defined and used.
links :
	@bin/links.py ./links.md ${ALL_FILES}

## nbspref : check that all cross-references are prefixed with a non-breaking space.
nbspref :
	@bin/nbspref.py ${ALL_FILES}

## tex-packages : install required LaTeX packages.
tex-packages :
	-tlmgr install $$(cat ./tex-packages.txt)

## settings : echo all variable values.
settings :
	@echo ALL_HTML: ${ALL_HTML}
	@echo ALL_PDF: ${ALL_PDF}
	@echo R_RSE_FILES: ${R_RSE_FILES}
	@echo COMMON_FILES: ${COMMON_FILES}
	@echo ALL_FILES: ${ALL_FILES}
