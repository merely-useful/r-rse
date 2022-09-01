library(fs)
library(readr)
library(purrr)
library(here)

# List with the short name for the book (no spaces or dashes/minuses), along
# the URL.
book_urls <- list(
    dracula = "https://www.gutenberg.org/cache/epub/345/pg345.txt",
    frankenstein = "https://www.gutenberg.org/cache/epub/42324/pg42324.txt"
)

# Function to download the file if it doesn't exist, then read the file into R.
download_then_read <- function(url, book_name) {
    # Set the path of the book to `data-raw/` and ending as a `.txt` file.
    book_file_path <- here("data-raw", paste0(book_name, ".txt"))
    # Download text if it isn't already here
    if (!file_exists(book_file_path)) {
        download.file(url, book_file_path)
    }
    read_lines(book_file_path)
}

# `imap()` takes the URLs inside the `book_urls` list as the first argument (`url`) to
# `download_then_read()` and uses the `names()` of the list as the second
# argument (`book_name`). The output is a list of the books.
books <- imap(
    book_urls,
    download_then_read
)

# Save the book list as an .rda file in `data/`.
usethis::use_data(books, overwrite = TRUE)
