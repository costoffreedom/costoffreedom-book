#!/bin/bash

TEX_TARGET_DIRECTORY=tex/chapters/

# create target dir
mkdir -p $TEX_TARGET_DIRECTORY

echo "Converting md files to latex... in $TEX_TARGET_DIRECTORY"
# convert the whole thing to tex
find book -name '*.md' -exec sh -c 'pandoc -f markdown -t latex -o tex/chapters/`basename "$0" .md`.tex $0' {} \;

echo "Converted to latex files"


# read summary and get texts by order in a single big file

# convert all to tex
# for file in find ../book -name '*.md'

# for file in *.md; do
#     pandoc -f markdown -t html "$file"
# done

# pandoc  SUMMARY.md -t html | \
#   grep -o '<a href=['"'"'"][^"'"'"']*['"'"'"]' | \
#   sed -e 's/^<a href=["'"'"']//' -e 's/["'"'"']$//' | \
#   xargs pandoc --template tex/template.tex --latex-engine=xelatex -o book.pdf
