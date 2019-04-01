R -e 'tinytex::install_tinytex()'

R -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::pdf_book")'
R -e 'bookdown::render_book("index.Rmd", output_format = "bookdown::gitbook")'

if [[ -d docs ]]; then rm -r docs; fi
mkdir docs
cp -r _book/* docs