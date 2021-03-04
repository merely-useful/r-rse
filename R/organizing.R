library(tidyverse)
chapters <- fs::dir_ls("chapters/", glob = "*.Rmd")

"

## Final exercise

<!-- NOTE: Preferably something linked to working towards completing the project assignments, maybe to be used as a milestone? -->

" %>%
    walk2(chapters, write_lines, append = TRUE)
