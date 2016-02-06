# Cost of Freedom

The Cost of Freedom is a book that started with a book sprint in Pourrières, France from November 2nd to 6th, 2015, and contributions from around the world. The book is one of many projects inspired by and demanding freedom for Bassel Khartabil Sadafi, loved and celebrated Internet volunteer detained in Syria since 15 March 2012. **[#FREEBASSEL](http://freebassel.org)!**

The was published at the end of the book sprint, but the topic remains vital and mission unfulfilled. To facilitate further edits and enhancements, the book contents have been migrated to GitBook.  Feel free and encouraged to open issues, propose edits (or even entirely new chapters), make translations, fork, copy, excerpt, share, promote, and otherwise make your own.

## Technical details

Current build is available on [gitbook.com](https://www.gitbook.com/book/costoffreedom/costoffreedom-book/details)

### Build manually

Follow instructions at [Gitbook](https://github.com/GitbookIO/gitbook)

    npm -g install gitbook
    gitbook serve
    gitbook build

To build PDF and Epub locally, you need ```ebook-convert``` (packaged in [ Calibre](http://calibre-ebook.com/download))

    gitbook pdf . ./costoffreedom.pdf

### Author Bios

Update bios in the authors folders, then run ```python bin/update_bios.py```  

### License

[CC0-1.0](https://creativecommons.org/publicdomain/zero/1.0/)
