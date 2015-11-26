# Cost of Freedom

All builds are available on [gitbook.com](https://www.gitbook.com/book/costoffreedom/costoffreedom)**

### Build manually

Follow instructions at [Gitbook](https://github.com/GitbookIO/gitbook)

    npm -g install gitbook
    gitbook serve
    gitbook build

To build PDF and Epub locally, you need ```ebook-convert``` (packaged in [ Calibre](http://calibre-ebook.com/download))

    gitbook pdf . ./costoffreedom.pdf

## Author Bios

Update bios in the authors folders, then run ```python bin/update_bios.py```  
