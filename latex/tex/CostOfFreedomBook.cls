\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CostOfFreedomBook}[2015/11/16 v0.1 Cost of Freedom Book Class]
\LoadClass[oneside,12pt]{book}

%encoding
% \RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{lmodern}
\RequirePackage[T1]{fontenc}
\RequirePackage{textcomp}
\RequirePackage{subscript}

% turn the whole document in serif
% \renewcommand{\sfdefault}{lmss}
% \renewcommand{\familydefault}{\sfdefault}
% \renewcommand{\rmdefault}{lmss}


% Media & images
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\g@addto@macro{\UrlBreaks}{\UrlOrds} % hyphenate URLs
\hypersetup{
    linktocpage,
    colorlinks,
    filecolor=black,
    linkcolor=black,
    urlcolor=black %Crimson%linkgrey,
}

% quotes (includes authors names)
\renewenvironment{quote}{\list{}{\it\leftmargin=0in\rightmargin=0.3in}\item[]}{\endlist}

% TOC
\setcounter{secnumdepth}{0}
\setcounter{tocdepth}{2}
\renewcommand*\l@subsection{\@dottedtocline{2}{1.7em}{3.2em}}

% table settings
\RequirePackage{tabulary}
\RequirePackage{colortbl}
\RequirePackage{longtable}

% colors
\RequirePackage{color}
\definecolor{Crimson}{rgb}{0.6471, 0.1098, 0.1882}
\definecolor{chaptergrey}{gray}{0.3}
\definecolor{linkgrey}{gray}{0.5}
\definecolor{cofred}{RGB}{241,86,64}

% heading
\RequirePackage{sectsty}
\RequirePackage{titlecaps}
\renewcommand\thesection{} % remove section number


% fonts
\sectionfont{
  \usefont{T1}{qhv}{b}{n}\selectfont \huge \color{cofred} \MakeUppercase
  }
  %font, color, layout
\subsectionfont{
  \usefont{T1}{qhv}{b}{n}\selectfont \large \color{cofred} \MakeUppercase
} %font, color, layout

% page layout
\RequirePackage[paperwidth=6.68in, paperheight=9.06in, margin=1in]{geometry} % cus­tomize page lay­out
\pagestyle{plain} % options: empty , plain , fancy
\RequirePackage{lscape}

% typo
\RequirePackage{setspace} %spacing between lines
\setlength{\parskip}{.6em} %paragraph spacing
\RequirePackage[normalem]{ulem} %strikethrough

%bio
\renewcommand\verbatim@font{\usefont{T1}{qhv}{b}{n}\selectfont}

% footnote
\addtolength{\footnotesep}{\footnotesep}
\setlength{\skip\footins}{0.0469in}
\renewcommand\footnoterule{\vspace*{-0.0071in}\setlength\leftskip{0pt}\setlength\rightskip{0pt plus 1fil}\noindent\textcolor{black}{\rule{0.25\columnwidth}{0.0071in}}\vspace*{0.0398in}}

% info & data
\RequirePackage{titling} %  \ti­tle, \au­thor avail­able per­ma­nently

% biblio
\RequirePackage[authoryear]{natbib}
\bibliographystyle{plainnat-fr}

% sommaire
\RequirePackage[tight]{shorttoc}
\newcommand{\sommaire}{\shorttoc{Sommaire}{1}}

\renewcommand*\l@figure{\@dottedtocline{1}{1.5em}{3.3em}}

% add a blank page
\newcommand*\blankpage{\newpage\null\thispagestyle{empty}\newpage}

% CC licensing
\RequirePackage{cclicenses}

\newcommand{\cclicensepage}{
    \newpage \thispagestyle{empty} \vspace*{\fill}

    \begin{flushright}
    \sc \noindent \cc~\textit{Creative Commons 1.0 (CC0)} \\
    \noindent 2015
    \end{flushright}

    \vspace*{\fill}
    \newpage \rm
}

% some definitions
\def\subtitle#1{\gdef\@subtitle{#1}}

% load additional PDF pages
\RequirePackage{pdfpages}


% display arabic
\RequirePackage{polyglossia}
\RequirePackage{fontspec}
\setmainlanguage{english}
\setotherlanguage{arabic}

% \newfontfamily\arabicfont[Script=Arabic, Scale=1]{Traditional Arabic}
\newfontfamily\arabicfont[Script=Arabic,Scale=1.1]{Scheherazade}

% display Chinese
% \RequirePackage{CJKutf8}
\RequirePackage{xeCJK}
\setCJKmainfont{ukai.ttc}
\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}
}
