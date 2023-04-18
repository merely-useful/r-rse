# Contributing Guidelines

Contributions of all kinds are welcome. By offering a contribution, you
agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md) and that
your work may be made available under the terms of [our
license](LICENSE.md).

The main development is done by the core team (see [Issue
#2](https://github.com/merely-useful/r-rse/issues/2)), and decisions are
done on a mainly "silence is agreement" philosophy for issues and pull
requests. When a disagreement occurs, the core team will discuss, take
any advice, and decide on how to address it and continue on.

## Workflow for adding content

The main development branch is `main` and the website is built on
`gh-pages`. To add content, create a new branch in the repository and
submit a PR. We suggest using the `pr_*` family of functions from the
usethis package. See the
[documentation](https://usethis.r-lib.org/articles/articles/pr-functions.html)
for learning how to use them. Please only create a PR when you are ready
for your change to be reviewed and merged in. In general, only the `Rmd`
files need to be edited.

When reviewing PRs and making changes, it's probably easier to edit the
branch directly and push the change up. For comments, please use the
commenting features in the PR.

## Setting up and building the book

1.  Install R and RStudio

2.  Open RStudio by clicking on the `r-rse.Rproj` file

3.  Install the dependencies by typing in the console

    ``` r
    # Make sure you have remotes installed
    # install.packages("remotes")
    remotes::install_deps()
    ```

This book is written in [Quarto](https://quarto.org/). If you want to
preview builds on your own computer:

1.  Build the website by using Ctrl-Shift-B when in RStudio.

## Guidelines

### Content-related

-   When targeting solo learners with content, use a callout box TODO:
    Add more details about this here.

-   As much as is reasonable, we want to restrict the variability in how
    this is taught overall while explicitly indicating areas that could
    be modified. As an example, final exercises are written in a way to
    emphasis building the kenyaweather package rather than letting the
    instructor decide.

-   While much of the content is targeted to a course setting, we refer
    to the content as "book" and not "course" to keep it more generic.

-   In general, try to be more serious but little, while keeping
    colloquial humor or cultural humor to a minimal in order to be
    understandable to as many globally as possible.

### Markdown-related

-   Review the Quarto guide and reference for more detailed explanation
    on how to write.

-   When referring to links, use `[text](url)` as the canonical Markdown
    format to use (as reformatted when using the RStudio Visual Editor).

-   Use `@Name1234` or `[@Name1234]` to refer to bibliography entries.
    These entries must exist in the `includes/book.bib` file. For
    multiple entries, separate the entries with `;`, i.e.
    `[@Name1234;@Name5678]`.

-   For internal cross-references, use `@sec-label` to link to specific
    sections, `@fig-label` to refer to figures, and others.

-   For keybindings, check `_variables.yml` if one already exists. If
    the one you want doesn't exist, add it below the `keybinds:`
    key-value pairing, using the others as an example. To insert in the
    text, you type out `{{< var keybinds.ACTION >}}`.

-   TODO: Write text about adding glossary entries.

-   Stick to a specific style for markdown code. When referring to:

    -   A folder name, use `foldername/` with the `/` at the end.
    -   R functions, use `function_name()` with the `()` at the end.
    -   R variables, use `variable_name`.
    -   File names, use `file-name`. Prefer `-` over `_` to distinguish
        between R variables and files. File names will of course usually
        have a file extension.
    -   For packages, use `{packagename}`.

### Graphical

-   We suggest using the free desktop version of
    [draw.io](https://www.draw.io/) to draw diagrams. Save the source as
    `figures/raw/chNUM-stem.drawio` and export drawings as all of PNG
    and SVG. Use `knitr::include_graphics()` to insert these figures.

### Code-related

-   We use the new `main` terminology for the "main" branch of a Git
    project on GitHub (originally `master`).

-   We use the [tidyverse style guide](https://style.tidyverse.org/).
    Please read and adhere to those styles. The
    [styler](https://styler.r-lib.org/) package can help a lot with
    that.

-   Code chunks should not be longer than 70 characters long, due to
    limitations with the PDF output. TODO: This will probably be
    automated and you won't need to think about this.

- Write functions as `function_name()`, folders as `folder-name/`, and
packages as `{packagename}`. At least for the functions and packages, when formatted
this way they get automatic linking through bookdown (as HTML only).

### Language-related

-   Write in plain, international Simplified English (i.e. American
    compared to British).

-   Avoid culturally specific or language specific humor and jokes so
    that we can be understandable to as many as possible.

-   Write in the active voice. The assumed reader for "you" refers to:

    -   The learner when writing in chapters and learning content.
    -   The instructor for instructor sections and appendices.

-   For chapters and learning content, the perspective for writing is as
    if we are the instructor doing the live coding (or lecture) to the
    learners. So language might be something like:

    -   For live coding:
        -   "We will now do this" rather than "You will now do this"
    -   For exercises:
        -   "You should/will/need to"
    -   For reading material or informational sections:
        -   "You can/could/might"
    -   Pronouns should in general be active and direct, e.g. first or
        second person ("we", "you"), rather than indirect third-person
        ("they").
        -   When third person pronoun is necessary, use "they" unless
            talking about e.g. one of the personas.

## Using R packages in the book

GitHub Actions needs to know what packages to install to build the
website. To add an R package dependency, type in the R console while in
the `r-rse` R project in RStudio:

``` r
usethis::use_package("packagename")
```

This will add the package dependency to the `DESCRIPTION` file under the
imports section. For example, if you want to add the package dplyr, you
would type out `usethis::use_package("dplyr")` and hit enter. Unless
necessary for the building of the book, use CRAN official packages.

The book is build using GitHub Actions with this
[`build-website.yaml`](.github/workflows/build-website.yaml) action.
