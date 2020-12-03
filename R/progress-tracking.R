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
