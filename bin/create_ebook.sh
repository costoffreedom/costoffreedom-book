#!/bin/bash

# create ebook
gitbook epub .. ./costoffreedom.epub

# add relevant metadata
ebook-meta -a"Collective" -k"Collective" --date="2015-11-07 18:40:14" -p"Book Sprints" --tags="free culture, free software, open source, book sprint, freebassel, Bassel Sadafi" costoffreedom.epub
