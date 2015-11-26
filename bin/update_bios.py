#!/usr/bin/bash

import os
import argparse
import markdown2
import sys
import html2text
from slugify import slugify
import codecs

BOOK_DIR = os.path.join(os.getcwd(), "oldbook")
DEST_DIR = os.path.join(os.getcwd(),"book")
AUTHORS_DIR = os.path.join(os.getcwd(),"authors")

print "Parsing book at %s "%BOOK_DIR

chapters = ["affordances" , "architectonics-of-power" , "collective-memory" , "epilogue" , "opening:freedom" , ]

def convert_and_remove_yaml(text_path):

    print "...  %s "%text_path

    #load metata
    with open(text_path, "r") as f :
        raw = f.read()

        # parse md with metadata and without bios
        html = markdown2.markdown(raw.decode("utf-8").split('<p class="author bio">')[0], extras=["metadata"])

        # get bio from authors folder
        try :
            bio_path = os.path.join(AUTHORS_DIR, "%s.md"%slugify(html.metadata["author"]))
            print bio_path
            bio = markdown2.markdown(open(bio_path, "r").read(), extras=["metadata"])

            # convert bio to markdown
            bio_md = html2text.html2text(bio)
            print bio_md
        except Exception :
            bio_md = ""


        # parse markdown
        final="""
# %s

%s

> %s
"""%(html.metadata["title"], html, bio_md)

        return final

def parse_chapters():
    for chapter in chapters:
        chapter_path = os.path.join(BOOK_DIR,chapter)
        print "____ %s: %s"%(chapter, chapter_path)

        # create new chapter
        new_chapter_path = os.path.join(DEST_DIR,chapter)
        if not os.path.exists(new_chapter_path):
            os.makedirs(new_chapter_path)
        print "____ --> %s"%new_chapter_path

        # remove yaml
        for text_path in os.listdir(chapter_path):
            print text_path
            new_text_path = os.path.join(new_chapter_path, text_path)
            print "%s to %s"%(text_path, new_text_path)
            final = convert_and_remove_yaml(os.path.join(chapter_path, text_path))
            with codecs.open(new_text_path, 'w', "utf-8") as f:
                f.write(final)
            print "%s : saved"%new_text_path


if __name__ == '__main__':
    parse_chapters()
