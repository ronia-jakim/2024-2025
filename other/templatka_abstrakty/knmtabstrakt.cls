\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{knmtabstrakt}[abstrakty w texu dla Koła Naukowego Matematyków Teoretyków]

\LoadClass[12pt]{article}

\RequirePackage[a4paper,tmargin=3cm,bmargin=3cm,lmargin=3cm,rmargin=3cm]{geometry}

\RequirePackage{tikz} 
\RequirePackage{svg}

\RequirePackage{varwidth}

\RequirePackage{xcolor}

\RequirePackage{amsmath}

\RequirePackage[OT4,plmath]{polski}
\RequirePackage{wrapfig}
\RequirePackage{amsmath}
\RequirePackage{amssymb}

\newcommand\Z{\mathbb{Z}}
\newcommand\C{\mathbb{C}}
\newcommand\Q{\mathbb{Q}}
\newcommand\R{\mathbb{R}}
\newcommand\N{\mathbb{N}}

\makeatletter
\newcommand\godzina[1]{\def\@godzina{#1}}
\newcommand\sala[1]{\def\@sala{#1}}

\let\@pustagodz\@godzina

\renewcommand{\maketitle}{%
  \noindent
  \begin{tikzpicture}
    \draw (0,0) -- (\textwidth, 0);
    
    \draw[line width=.22cm] (2, -2) circle (1.4);
    \node at (2.05, -2) {\resizebox{2.3cm}{!}{$\boldsymbol{\color{gray}knmt}$}};
    \node at (2, -2) {\resizebox{2.3cm}{!}{$\boldsymbol{knmt}$}};

    \node[anchor=west] at (4, -2) {\begin{varwidth}{15cm}%
      \Large\bfseries% 
      Koło Naukowe\\ Matematyków Teoretyków UWr%
  \end{varwidth}};

    \draw (0, -4) -- (\textwidth, -4);
  \end{tikzpicture}
  \vspace{40pt}
  \begin{center}
    {\Large\sc\@title} 
    \bigskip %bigskip

    {\large\@author}
    \bigskip % bigskip
 
    \ifx\@godzina\@pustagodz
      {}
    \else 
      {\@date{ godz. }\@godzina{\\sala }\@sala, IM UWr}
    \fi
  \end{center}
  \vspace{40pt}
}
\makeatother

\AtEndDocument{
\vspace*{5ex}
\begin{flushright}
\large{\sc Serdecznie zapraszam!}
\end{flushright}
}

\pagestyle{empty}

