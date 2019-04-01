R -e 'bookdown::render_book("index.Rmd")'
if [[ -d docs ]]; then rm -r docs; fi
mkdir docs
cp -r _book/* docs