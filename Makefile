.PHONY : all clean chapters commands crossrefs fixme gloss html links nbspref settings tex-packages

ALL_HTML=_book/index.html
ALL_PDF=_book/r-rse.pdf
EXTRA=climate-data data src zipf

R_RSE_FILES=\
  index.Rmd \
  bash-basics.Rmd \
  bash-advanced.Rmd \
  git-cmdline.Rmd \
  git-advanced.Rmd \
  style.Rmd \
  automate.Rmd \
  teams.Rmd \
  project.Rmd \
  ci.Rmd \
  package-r.Rmd \
  correct.Rmd \
  publish.Rmd \
  finale.Rmd \
  objectives.Rmd \
  keypoints.Rmd \
  solutions.Rmd \
  yaml.Rmd \
  ssh.Rmd

COMMON_FILES=\
  _common.R \
  appendix.Rmd \
  LICENSE.md \
  CONDUCT.md \
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
everything : ${ALL_HTML} ${ALL_PDF}

##   r-rse : rebuild RSE R HTML and PDF.
r-rse : _book/index.html _book/r-rse.pdf

#-------------------------------------------------------------------------------

## html           : build all HTML versions.
html : ${ALL_HTML}

_book/index.html : ${R_RSE_FILES} ${COMMON_FILES}
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook', quiet = TRUE)"

#-------------------------------------------------------------------------------

## pdf : build PDF version.
pdf : ${ALL_PDF}

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
