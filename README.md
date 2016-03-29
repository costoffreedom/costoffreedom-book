# Cost of Freedom

The [Cost of Freedom](http://costoffreedom.cc) is a book that started with a [book sprint](https://en.wikipedia.org/wiki/Book_sprint) in Pourrières, France from November 2nd to 6th, 2015, and contributions from around the world. The book is one of many projects inspired by and demanding freedom for Bassel Khartabil, loved and celebrated Internet volunteer detained in Syria since 15 March 2012. **[#FREEBASSEL](http://freebassel.org)!**

The was published at the end of the book sprint, but the topic remains vital and mission unfulfilled. To facilitate further edits and enhancements, the book sources have been migrated to GitHub and published with GitBook.  Feel free and encouraged to open issues, propose edits (or even entirely new chapters), make translations, fork, copy, excerpt, share, promote, and otherwise make your own.

## Technical details

Source and issues are available at [GitHub](https://github.com/costoffreedom/costoffreedom-book).

Current build is available on [gitbook.com](https://www.gitbook.com/book/costoffreedom/costoffreedom-book/details) with the HTML version published to [book.costoffreedom.cc](http://book.costoffreedom.cc/).

### Build manually

Follow instructions at [Gitbook](https://github.com/GitbookIO/gitbook):

    npm -g install gitbook
    gitbook serve
    gitbook build

To build PDF and Epub locally, you need ```ebook-convert``` (packaged in [ Calibre](http://calibre-ebook.com/download)):

    gitbook pdf . ./costoffreedom.pdf

As of writing there are bugs in the gitbook toolchain that prevent it from generating EPUB files that will pass all validation checks. In order to overcome these problems, you can use a forked version of gitbook.

Clone the forked version:

    git clone -b custom git@github.com:christopheradams/gitbook.git ~/gitbook-custom
    cd ~/gitbook-custom
    npm install

Link the gitbook command to the custom version:

    gitbook versions:link ~/gitbook-custom

Now every time you run the `gitbook` command, it will use the custom version.

    gitbook epub . ./costoffreedom.epub

You can see what version you are using with the command:

    gitbook versions

To stop using the custom version:

    gitbook versions:uninstall latest

To upload on Lulu, you need to add proper metadata. Use the folowing script

    sh bin/create_ebook.sh 


### Build clean PDF with Latex

latexmk and pandoc are required.

   make pdf

### License

[CC0-1.0](https://creativecommons.org/publicdomain/zero/1.0/)
