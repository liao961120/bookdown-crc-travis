bookdown::render_book("index.Rmd", output_format = "bookdown::gitbook")
bookdown::render_book("index.Rmd", output_format = "bookdown::pdf_book")

if (dir.exists('docs')) unlink('docs', recursive = TRUE)
dir.create('docs')

source_files <- list.files("_book", full.names = TRUE)
file.copy(from = source_files, to = 'docs', recursive = TRUE)
