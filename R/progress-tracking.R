library(tidyverse)
chapters <- fs::dir_ls("chapters/", glob = "*.Rmd")
# appendix <- fs::dir_ls("appendices")

"## Chapter and appendix assignment

| Chapter/appendix | Assigned to |
|------------------|-------------|" %>%
    append(glue::glue("| {chapters} | |")) %>%
    paste0(collapse = "\n") %>%
    clipr::write_clip()

# glue::glue("| {appendix} | |")

"# Progress tracking
## Completed project assignments (item 2 in #1)

- [ ] appendices/assignment.Rmd

## Completed chapter final exercises (item 3 in #1)
" %>%
    append(glue::glue("- [ ] {chapters}")) %>%
    paste0(collapse = "\n") %>%
    clipr::write_clip()

"
## Completed steps/actions taken on example package (item 4 in #1)

List out the steps or actions taken or functions used (e.g. usethis) throughout each chapter that builds up the example package (Zipfs Law). Add learning objectives to the top of the chapter file that will link the steps taken and exercises.
" %>%
    append(glue::glue("- [ ] {chapters}")) %>%
    paste0(collapse = "\n") %>%
    clipr::write_clip()

"
## Completed core (and supplemental) exercises done with the example package (item 5 in #1)

Write out some core and supplemental exercises that build up or add to the example package (Zipfs Law) within each chapter. Include potential solutions in the exercise section as it's own code chunk. Exercises should be inserted below their respective steps from item 4 of #1 (section above).

This depends heavily on the chapter, but a good aim for number of exercises would be between 6-12.
" %>%
    append(glue::glue("- [ ] {chapters}")) %>%
    paste0(collapse = "\n") %>%
    clipr::write_clip()
