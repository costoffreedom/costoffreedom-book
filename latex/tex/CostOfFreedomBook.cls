\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CostOfFreedomBook}[2015/11/16 v0.1 Cost of Freedom Book Class]
\LoadClass[oneside,12pt]{book}

%encoding

\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage{textcomp}
\RequirePackage{subscript}

\RequirePackage{caption}

% display arabic
\RequirePackage{arabtex}

% display Chinese
\RequirePackage{CJKutf8}
\newcommand{\zh}[1]{\begin{CJK}{UTF8}{gkai}#1\end{CJK}}
\newcommand{\zht}[1]{\begin{CJK}{UTF8}{bkai}#1\end{CJK}} %traditional

\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}

% Media & images
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\g@addto@macro{\UrlBreaks}{\UrlOrds} % hyphenate URLs
\hypersetup{
    linktocpage,
    colorlinks,
    citecolor=Crimson,%linkgrey,
    filecolor=black,
    linkcolor=black,
    urlcolor=black %Crimson%linkgrey,
}

% TOC
\setcounter{secnumdepth}{0}
\setcounter{tocdepth}{2}

\renewcommand*\l@subsection{\@dottedtocline{2}{1.7em}{3.2em}}

%annexes
\RequirePackage[toc,page]{appendix}
\renewcommand{\appendixtocname}{Annexes}
\renewcommand\appendixpagename{Annexes}
\renewcommand{\appendixname}{{\sffamily Annexe}}

% algorithms
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}

% figures settings
\RequirePackage{subfig}
\RequirePackage{float}
\RequirePackage{rotating}

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
\sectionfont{ \usefont{T1}{qhv}{b}{n}\selectfont \huge \color{cofred} \MakeUppercase} %font, color, layout

\subsectionfont{ \usefont{T1}{qhv}{b}{n}\selectfont \large \color{cofred} \MakeUppercase} %font, color, layout

% page layout
\RequirePackage[paperwidth=6.68in, paperheight=9.06in, margin=1in]{geometry} % cus­tomize page lay­out
\RequirePackage{fancyhdr}  % header and footer
\RequirePackage{booktabs} % for much better looking tables
\RequirePackage[palatino]{quotchap} % dec­o­ra­tive chap­ter head­ings with quo­ta­tions
\pagestyle{plain} % options: empty , plain , fancy
\RequirePackage{lscape}

% typo
\RequirePackage{lipsum} % Lorem ipsum
\RequirePackage{lettrine} % big letter at start of chapter
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

% title page
\renewcommand{\maketitle}{

    \thispagestyle{empty}

    \begin{center}

    \vspace*{1cm}

    % title
    \vspace*{60pt}

    { \Huge
      \begin{spacing}{1.2}
          \textcolor{Crimson}{
            \thetitle \\
            \vspace*{10pt}
            \Large{\@subtitle} \\
          }
      \end{spacing}
    }

    \vspace{50pt}

    %

    \vspace{70pt}


    \end{center}
}

% page de garde
\newcommand*\titlelight{

  \thispagestyle{empty}
  \begin{center}

    \vspace*{0.5cm}
    {\Large \theauthor}\\
    \vspace*{5cm}


    % title
    \vspace*{1cm}
    { \Huge
      \begin{spacing}{1.5}
          \textcolor{Crimson}{
            \thetitle \\
            \vspace*{0.5cm}
            \Large{\@subtitle} \\
          }
      \end{spacing}
    }

    \vspace*{\fill}

    % credits
    \vspace{30pt}
    \includegraphics[scale=0.12]{media/logoTPT.png}

    \textbf{\@university}  \\
    \@universitycity, \@universitystate \\
    \@degreeyear

  \end{center}
}

% the abstract
\newcommand{\resumepage}{
    \newpage
    \pagenumbering{roman}
    \setcounter{page}{3}
    \pagestyle{fancy}
    \lhead{Sous la direction de \@advisor} \rhead{\@author}
    \renewcommand{\headrulewidth}{0.0pt}
    \begin{center}
    \vspace*{1pt}
    \Large \textcolor{Crimson}{\textit{\@title}} \normalsize\\
    \vspace*{15pt}
    \sc Résumé \\ \rm
    \end{center}
    \doublespace %Harvard registrar requests that abstract is double spaced
    \input{pages/resume}
    \doublespace %Harvard registrar requests that abstract is double spaced
    \newpage \lhead{} \rhead{}
    \cfoot{\thepage}
    \onehalfspacing
}

% asbtarct
\newcommand{\abstractpage}{
    \newpage
    \pagenumbering{roman}
    \setcounter{page}{3}
    \pagestyle{fancy}
    \lhead{Sous la direction de \@advisor} \rhead{\@author}
    \renewcommand{\headrulewidth}{0.0pt}
    \begin{center}
    \vspace*{1pt}
    \Large \textcolor{Crimson}{
      \textit{Design of a Internet memes data visualisation toolkit}
      \normalsize\\
      The case of the Chinese social network Sina Weibo
      }
    \\
    \vspace*{15pt}
    \sc Abstract \\ \rm
    \end{center}
    \doublespace %Harvard registrar requests that abstract is double spaced
    \input{pages/abstract}
    \doublespace %Harvard registrar requests that abstract is double spaced
    \newpage \lhead{} \rhead{}
    \cfoot{\thepage}
    \onehalfspacing
}

% inspirational quote
\newenvironment{chapquote}[2][0.2em]
  {\setlength{\@tempdima}{#1}%
   \def\chapquote@author{#2}%
   \parshape 1 \@tempdima \dimexpr\textwidth-2\@tempdima\relax%
   \itshape}
  { \par\normalfont\hfill--\ \chapquote@author\hspace*{\@tempdima}\par\bigskip}



% An environment for paragraph-style section
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}}

% multipage tabulary
\def\ltabulary{%
  \small
  \def\endfirsthead{\\}%
  \def\endhead{\\}%
  \def\endfoot{\\}%
  \def\endlastfoot{\\}%
  \def\tabulary{%
    \def\TY@final{%
  \def\endfirsthead{\LT@end@hd@ft\LT@firsthead}%
  \def\endhead{\LT@end@hd@ft\LT@head}%
  \def\endfoot{\LT@end@hd@ft\LT@foot}%
  \def\endlastfoot{\LT@end@hd@ft\LT@lastfoot}%
  \longtable}%
    \let\endTY@final\endlongtable
    \TY@tabular}%
  \dimen@\columnwidth
  \advance\dimen@-\LTleft
  \advance\dimen@-\LTright
\tabulary\dimen@}

\def\endltabulary{\endtabulary}
