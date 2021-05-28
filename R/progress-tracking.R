library(tidyverse)
chapters <- fs::dir_ls("chapters/", glob = "*.Rmd")
# appendix <- fs::dir_ls("appendices")


# Milestone and progress tracking -----------------------------------------

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

"
## Add content and create rough draft of each chapter (item 7 in #1)

Build up and finish writing the exercises and add the text and code-along content that are related to them.

As content and exercises are added, please refer to #96 for more details on how to format and structure the chapters.
" %>%
    append(glue::glue("- [ ] {chapters}")) %>%
    paste0(collapse = "\n") %>%
    clipr::write_clip()


# Review phase tracking ---------------------------------------------------

library(lubridate)
library(stringr)

start_date <- ymd("2021-06-03")
meeting_dates <- seq(start_date, start_date + months(4), by = "2 weeks")[c(-4, -9)]
chapters[c(-1, -14)] %>% str_spl

"| Date | Chapters to review and discuss |
|----|----|" %>%
    append(glue::glue("| {meeting_dates} | {} |"))
