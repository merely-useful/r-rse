# Contributing {#contributing}

Contributions of all kinds are welcome.
By offering a contribution, you agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md)
and that your work may be made available under the terms of [our license](LICENSE.md).

## Style Guide

We follow the [tidyverse style guide](https://style.tidyverse.org/).
Please read and adhere to those styles. 
The styler package can help with that.

We use Simplified English rather than Traditional English,
i.e., American rather than British spelling and grammar.

## Setting Up

This book is written in [Bookdown](https://bookdown.org/).
If you want to preview builds on your own computer, please:

1.  Follow the instructions for installing Bookdown.
1. Open the `r-rse.Rproj` project in RStudio and build the website by running
"Ctrl-Shift-B" (or "Build -> Build All").
1. If you use Makefile, run `make everything` to build the html and pdf files of the book.

Please note that Bookdown works best with [TinyTeX](https://yihui.name/tinytex/).
After installing it, you can run `make tex-packages` to install all the packages this book depends on.
You do _not_ need to do this if you are only building and previewing the HTML versions of the books.
