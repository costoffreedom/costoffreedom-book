#!/bin/bash

TEX_TARGET_DIRECTORY=latex/tex/chapters/

# create target dir
mkdir -p $TEX_TARGET_DIRECTORY

echo "Converting md files to latex... in $TEX_TARGET_DIRECTORY"
# convert the whole thing to tex
for file in $(find book -name '*.md'); do

  filename="${file##*/}"

  case "$filename" in
  index.md)
    # Do stuff
    echo "_______________________"
    index_name=$(basename `dirname $file`)
    tex_name=`basename "$index_name" .md`.tex
    ;;
  *)
    # echo $filename
    tex_name=`basename "$filename" .md`.tex
  esac

  echo $tex_name

  pandoc -f markdown -t latex -o latex/tex/chapters/$tex_name $file

done
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
