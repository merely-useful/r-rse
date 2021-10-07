# Using R for Research Software Engineering

<!-- badges: start -->
[![R build status](https://github.com/merely-useful/r-rse/workflows/renderbook/badge.svg)](https://github.com/merely-useful/r-rse/actions)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
<!-- badges: end -->

> I understand that students enjoy it, but it's merely useful.
>
> -- A research professor speaking about an early version of this material.

Computers are now as essential for research as telescopes, test tubes, and
libraries, which means that researchers need need to know how to use, build, and
share software. However, most introductions to programming focus on developing
commercial applications, not on exploring problems and answering questions from
the perspective of a researcher.
Software built for research purposes has different needs and requires different
skills and knowledge.
People who make these software are called [research software engineers][rse],
and the aim of this book is to get you ready for this role---to help you go from
writing code for your own use
to creating tools to help your entire field advance.

This repository hosts the book that contains the material for (potentially) a semester-long
course on learning to do research software engineering with R.
For more detail on the book, check out the [overview](https://merely-useful.github.io/r-rse/preface.html).

## Instructional Design

The lessons and material in this book are designed for a participatory
live-coding approach. Live-coding is when an instructor types and runs code in
front of the class, while the class follows along using their own computers.
Exercises are interspersed throughout the lesson material to reinforce learning
and practice the skills on different problems. 
The final aim of the book is for learners to create an R package of their own,
individually and in a group setting.

## Lesson content

The teaching material is found mainly in the main project folder in the files:

- `index.Rmd`: Contains the overview of the book.
- Chapter files start with two numbers (e.g. `01-`)

The website is generated from [bookdown], 
so it follows the file and folder structure
conventions from that package.

## Installing necessary R packages

Packages used and depended on for this book are included in the `DESCRIPTION`
file. To install the packages, run this function in the root directory (where
the `r-rse.Rproj` file is located:

```r
# install.packages("remotes")
remotes::install_deps()
```

## Contributing

If you are interested in contributing to the book material, please refer to
the [contributing guidelines](.github/CONTRIBUTING.md). Please note that the
project is released with a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md). By contributing to this project, you agree to
abide by its terms.

## Acknowledgements

This book owes its existence to
everyone we met through [the Carpentries][carpentries].

TODO: Add link and description to py-rse here.
