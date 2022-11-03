library(fs)
library(tidyverse)


extract_file_links <- function(file) {
    links <- file %>%
        read_lines() %>%
        str_extract(pattern = "(\\[(.*?)\\]\\((.*?)\\)|\\[(.*?)\\]\\[(.*?)\\]|\\[(.*?)\\]\\: http.*)")
    tibble(links = links[!is.na(links)])
}

extract_links <- function(files) {
    files %>%
        map_dfr(extract_file_links, .id = "file") %>%
        separate(links, into = c("label", "link"), sep = "\\](\\(|:|\\[)") %>%
        mutate(across(
            c(label, link),
            ~ str_trim(.x) %>%
                str_remove_all("(^\\[|\\]$|\\)$)")
        ))
}

repo_md_links <- dir_ls(regex = ".*\\.R?md$", recurse = TRUE) %>%
    str_subset("(includes/links\\.md|_book/.*)", negate = TRUE) %>%
    set_names() %>%
    extract_links()

link_file <- path("includes", "links.md") %>%
    set_names() %>%
    extract_links()

link_file %>%
    select(label, main_link = link) %>%
    left_join(repo_md_links %>%
                  rename(label = link, file_label = label))
