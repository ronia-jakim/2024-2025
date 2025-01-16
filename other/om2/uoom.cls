\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uoom}[template do list]

\DeclareOption{noheader}{\newcommand{\uoomnoheader}{}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsart}}
\ProcessOptions\relax
\LoadClass[12pt,a4paper]{amsart}

\usepackage[utf8]{inputenc} 
\usepackage{polski}

\usepackage{amsmath}  
\usepackage{amsfonts}  
\usepackage{amssymb} 

\usepackage{graphicx}
\usepackage{tikz}
\usepackage{xcolor}
\usepackage{booktabs}  
\usepackage{paralist} 
\usepackage{verbatim}
\usepackage[shortlabels]{enumitem} 
\usepackage{ifthen}

\usepackage{subfig} 
\usepackage{wrapfig}

\usepackage{multicol}

%poniższe usuwa sieroty <3
\usepackage[nosingleletter]{impnattypo}

\usepackage{geometry}
\geometry{a4paper}  
\geometry{margin=1in}
\geometry{top=0.5in}
\geometry{bottom=0.5in}
\geometry{portrait}
\pagestyle{plain}

%oznaczenia zbiorów
\newcommand{\RR}{\mathbb{R}}
\newcommand{\QQ}{\mathbb{Q}}
\newcommand{\ZZ}{\mathbb{Z}}
\newcommand{\NN}{\mathbb{N}}
\newcommand{\CC}{\mathbb{C}}
\newcommand{\FF}{\mathbb{F}}

%logika
\newcommand{\es}{\emptyset}
\newcommand{\sss}{\subset}
\newcommand{\ssn}{\subsetneq}
\newcommand{\sse}{\subseteq}
\newcommand{\countably}{\aleph_0}
\newcommand{\continuum}{\mathfrak{c}}
\newcommand{\pset}{\mathcal{P}}

%analiza
\newcommand{\dx}{\mathrm{d}x}
\newcommand{\pfrac}[2]{\frac{\partial #1}{\partial #2}}
\newcommand{\eps}{\varepsilon} 

%algebra
\newcommand{\iv}{^{-1}}
\DeclareMathOperator{\ord}{ord}

\DeclareMathOperator{\aut}{Aut}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\id}{Id}
\let\ker\relax \DeclareMathOperator{\ker}{ker}
\DeclareMathOperator{\im}{Im}
\DeclareMathOperator{\fix}{Fix}

\DeclareMathOperator{\tr}{Tr}
\DeclareMathOperator{\n}{N}

\DeclareMathOperator{\lin}{Lin}
\DeclareMathOperator{\trdeg}{trdeg}
\DeclareMathOperator{\acl}{acl}

\DeclareMathOperator{\gal}{Gal}

\DeclareMathOperator{\NWD}{NWD}
\DeclareMathOperator{\NWW}{NWW}

\let\Re\relax \DeclareMathOperator{\Re}{Re}
\let\Im\relax \DeclareMathOperator{\Im}{Im}

%topologia
\DeclareMathOperator{\bd}{Bd}
\DeclareMathOperator{\cl}{Cl}

%teoria miary
\DeclareMathOperator{\bor}{Bor}
\newcommand{\leb}{\mathrm{Leb}}

%prawdopodobieństwo
\newcommand{\PP}{\mathbb{P}}
\newcommand{\EE}{\mathbb{E}}
\newcommand{\one}{\mathbf{1}}
\DeclareMathOperator{\var}{Var}
\DeclareMathOperator{\cov}{Cov}

%nawiasowania
\newcommand{\pa}[1]{\left( #1 \right)}
\newcommand{\sqpa}[1]{\left[ #1 \right]}
\newcommand{\brpa}[1]{\left\{ #1 \right\}}
\newcommand{\abs}[1]{\left| #1 \right|} 
\newcommand{\ang}[1]{\left\langle #1 \right\rangle}
\newcommand{\fl}[1]{\left\lfloor #1 \right\rfloor}
\newcommand{\ce}[1]{\left\lceil #1 \right\rceil}

%czcionki
\newcommand{\mb}[1]{\mathbf{#1}}
\newcommand{\mc}[1]{\mathcal{#1}}
\newcommand{\ov}[2]{\stackrel{#1}{#2}}

\newcommand{\mA}{\mathcal{A}}
\newcommand{\mB}{\mathcal{B}}
\newcommand{\mF}{\mathcal{F}}
\newcommand{\mG}{\mathcal{G}}
\newcommand{\mH}{\mathcal{H}}
\newcommand{\mP}{\mathcal{P}}

\DeclareMathOperator{\OMangle}{<\!\!\!)}
\renewcommand{\sphericalangle}{\OMangle}
\renewcommand{\angle}{\OMangle}
\newcommand{\nwsr}{$\curvearrowright$}

% Makra od MPr

\newcommand \eq[1]{\begin{equation} #1 \end{equation}}
\newcommand \eqx[1]{\begin{equation*}  #1 \end{equation*}}
\newcommand \al[1]{\begin{align} #1 \end{align}}
\newcommand \alx[1]{\begin{align*}  #1 \end{align*}}
\renewcommand \sp[1]{\begin{equation} \begin{split} #1 \end{split} \end{equation}}
\newcommand \spx[1]{\begin{equation*} \begin{split} #1 \end{split} \end{equation*}}
\newcommand \en[1]{\begin{enumerate}  #1 \end{enumerate}}
\newcommand \ite[1]{\begin{itemize}  #1 \end{itemize}}
\newcommand{\thm}[2]{\begin{Thm} \label{#1} #2 \end{Thm}}
\newcommand{\sthm}[2]{\begin{Sthm} \label{#1} #2 \end{Sthm}}
\newcommand{\thmx}[1]{\begin{Thmx} #1 \end{Thmx}}
\newcommand{\lem}[2]{\begin{Lem} \label{#1} #2 \end{Lem}}
\newcommand{\lemx}[1]{\begin{Lemx} #1 \end{Lemx}}
\newcommand{\cor}[2]{\begin{Cor} \label{#1} #2 \end{Cor}}
\newcommand{\corx}[1]{\begin{Corx} #1 \end{Corx}}
\newcommand{\asu}[2]{\begin{Asu} \label{#1} #2 \end{Asu}}
\newcommand{\asux}[1]{\begin{Asux} #1 \end{Asux}}
\newcommand{\prop}[2]{\begin{Prop} \label{#1} #2 \end{Prop}}
\newcommand{\propx}[1]{\begin{Propx} #1 \end{Propx}}
\newcommand{\rem}[2]{\begin{Rem} \label{#1} #2 \end{Rem}}
\newcommand{\remx}[1]{\begin{Remx} #1 \end{Remx}}
\newcommand{\fact}[2]{\begin{Fact} \label{#1} #2 \end{Fact}}
\newcommand{\factx}[1]{\begin{Factx} #1 \end{Factx}}
\newcommand{\defn}[2]{\begin{Defn} \label{#1} #2 \end{Defn}}
\newcommand{\defnx}[1]{\begin{Defnx} #1 \end{Defnx}}
\newcommand{\ex}[2]{\begin{Ex} \label{#1} #2 \end{Ex}}
\newcommand{\exx}[1]{\begin{Exx} #1 \end{Exx}}
\newcommand{\pr}[1]{\begin{proof} #1 \end{proof}}
\newcommand{\hidpr}[1]{{\color{red} \begin{proof} #1 \end{proof}}}
%\newcommand{\hidpr}[1]{}
\newcommand{\sol}[1]{\begin{Sol} #1 \end{Sol}}
\newcommand{\solx}[1]{\begin{Solx} #1 \end{Solx}}

%%%%%  COMMENTS, STRIKE OUT
\def\ccc#1{{\sout{#1}}}
\newcounter{comcount}

\def\comm{Comment }
%\def\comm{Komentarz }

\def\com#1{\stepcounter{comcount}
{\noindent \fboxrule=0.3mm\fcolorbox[named]{Red}{white}
{\begin{minipage}{0.97\textwidth}{\color[named]{Red}{\bf \comm \arabic{comcount}:} #1}\end{minipage}}
\vskip 1em}}

%%%%  COLORS
% pink, red, vio, green, blue, yellow, orange
\newcommand{\pink}{\textcolor{Magenta}}     \newcommand{\red}{\textcolor{red}}      \newcommand{\vio}{\textcolor{violet}}
\newcommand{\green}{\textcolor{green}}      \newcommand{\blue}{\textcolor{blue}}    \newcommand{\yell}{\textcolor{yellow}}
\newcommand{\oran}{\textcolor{orange}}

%%%%  LINE 
\renewcommand{\line}{\vbox{\hrule width\textwidth height 1pt}\smallskip}

%%%%  GREEK
\renewcommand{\a}{\alpha}       \newcommand{\be}{\beta}         \newcommand{\e}{\varepsilon}
\newcommand{\w}{\omega}         \newcommand{\Om}{\Omega}        \newcommand{\de}{\delta}
\newcommand{\ka}{\kappa}        \newcommand{\la}{\lambda}
\newcommand{\vphi}{\varphi}     \newcommand{\vpsi}{\varpsi}

%%%%  MATHBF, ETC.
\renewcommand{\AA}{\mathbb{A}} \newcommand{\Aa}{\mathbf{A}} \renewcommand{\aa}{\mathcal{A}}
\newcommand{\BB}{\mathbb{B}} \newcommand{\Bb}{\mathbf{B}} \newcommand{\bb}{\mathcal{B}}
\newcommand{\Cc}{\mathbf{C}} \newcommand{\cc}{\mathcal{C}}
\newcommand{\DD}{\mathbb{D}} \newcommand{\Dd}{\mathbf{D}} \newcommand{\dd}{\mathcal{D}}
\newcommand{\Ee}{\mathbf{E}} \newcommand{\ee}{\mathcal{E}}
\newcommand{\Ff}{\mathbf{F}} \newcommand{\ff}{\mathcal{F}}
\newcommand{\GG}{\mathbb{G}} \newcommand{\Gg}{\mathbf{G}} \renewcommand{\gg}{\mathcal{G}}
\newcommand{\HH}{\mathbb{H}} \newcommand{\Hh}{\mathbf{H}} \newcommand{\hh}{\mathcal{H}}
\newcommand{\II}{\mathbb{I}} \newcommand{\Ii}{\mathbf{I}} \newcommand{\ii}{\mathcal{I}}
\newcommand{\JJ}{\mathbb{J}} \newcommand{\Jj}{\mathbf{J}} \newcommand{\jj}{\mathcal{J}}
\newcommand{\KK}{\mathbb{K}} \newcommand{\Kk}{\mathbf{K}} \newcommand{\kk}{\mathcal{K}}
\newcommand{\LL}{\mathbb{L}} \newcommand{\Ll}{\mathbf{L}} \renewcommand{\ll}{\mathcal{L}}
\newcommand{\MM}{\mathbb{M}} \newcommand{\Mm}{\mathbf{M}} \newcommand{\mm}{\mathcal{M}}
\newcommand{\Nn}{\mathbf{N}} \newcommand{\nn}{\mathcal{N}}
\newcommand{\OO}{\mathbb{O}} \newcommand{\Oo}{\mathbf{O}} \newcommand{\oo}{\mathcal{O}}
\newcommand{\Pp}{\mathbf{P}} \newcommand{\pp}{\mathcal{P}}
\newcommand{\Qq}{\mathbf{Q}} \newcommand{\qq}{\mathcal{Q}}
\newcommand{\Rr}{\mathbf{R}} \newcommand{\rr}{\mathcal{R}}
\renewcommand{\SS}{\mathbb{S}} \newcommand{\Ss}{\mathbf{S}} \renewcommand{\ss}{\mathcal{S}}
\newcommand{\TT}{\mathbb{T}} \newcommand{\Tt}{\mathbf{T}} \renewcommand{\tt}{\mathcal{T}}
\newcommand{\UU}{\mathbb{U}} \newcommand{\Uu}{\mathbf{U}} \newcommand{\uu}{\mathcal{U}}
\newcommand{\VV}{\mathbb{V}} \newcommand{\Vv}{\mathbf{V}} \newcommand{\vv}{\mathcal{V}}
\newcommand{\WW}{\mathbb{W}} \newcommand{\Ww}{\mathbf{W}} \newcommand{\ww}{\mathcal{W}}
\newcommand{\XX}{\mathbb{X}} \newcommand{\Xx}{\mathbf{X}} \newcommand{\xx}{\mathcal{X}}
\newcommand{\YY}{\mathbb{Y}} \newcommand{\Yy}{\mathbf{Y}} \newcommand{\yy}{\mathcal{Y}}
\newcommand{\Zz}{\mathbf{Z}} \newcommand{\zz}{\mathcal{Z}}

%%%%  SYMBOLS
\newcommand{\supp}{\mathrm{supp}}
\newcommand{\8}{\infty}
\renewcommand{\d}{\partial}
\renewcommand{\(}{\left(}
\renewcommand{\)}{\right)}
\newcommand{\su}[3]{\sum_{#1=#2}^{#3}}
\newcommand{\Rn}{{\RR^n}}
\newcommand{\Rd}{{\RR^d}}
\newcommand{\ul}[1]{\underline{#1}}
\renewcommand{\rm}[1]{\mathrm{#1}}
\newcommand{\wt}[1]{\widetilde{#1}}
\newcommand{\limn}{\lim_{n\to \8}}
\newcommand{\limk}{\lim_{k\to \8}}
\newcommand{\limj}{\lim_{j\to \8}}
\newcommand{\limi}{\lim_{i\to \8}}
\newcommand{\sumn}{\sum_{n=1}^{\8}}
\newcommand{\sumk}{\sum_{k=1}^{\8}}
\newcommand{\sumj}{\sum_{j=1}^{\8}}
\newcommand{\sumi}{\sum_{i=1}^{\8}}
\newcommand{\tends}[2]{\xrightarrow[#1]{#2}}

%%%%  EXPRESSIONS, NORMS, ETC.
% abs, set, norm, expr, exprr
\newcommand{\set}[1]{\left\{ #1 \right\}}
\newcommand{\norm}[1]{\left\| #1 \right\|}
\newcommand{\expr}[1]{\( #1 \)}
\newcommand{\exprr}[1]{\left\[ #1 \right\]}
\newcommand{\lab}[1]{\label{#1}}

%%%%  LOCAL COMMANDS
\newcommand{\po}{\item}

% Koniec makr od MPr

\linespread{1.1}

\def\ooodstep{0.2cm}

\newcommand{\autor}[2]{\def \aaautor{#1} \def \gggender{#2}}
\newcommand{\temat}[1]{\def \tttemat{#1}}
\newcommand{\odstep}[1]{\let\ooodstep\relax \def \ooodstep{#1}}

\newcommand\blfootnote[1]{%
  \begingroup
  \renewcommand\thefootnote{}\footnote{#1}%
  \addtocounter{footnote}{-1}%
  \endgroup
}

\newcommand{\lista}[1]{
\medskip
\begin{enumerate}[label={\bf \theenumi.}, resume]
#1
\end{enumerate}
}
\newcommand{\zad}[1]{\item #1

\vspace{\ooodstep}}

\newcommand{\wsk}[1]{\noindent\textit{Wskazówka: \raisebox{-.5\height}{\rotatebox[]{180}{\begin{minipage}{0.75\textwidth}#1\end{minipage}}}}}

\newcommand{\wskk}[1]{\noindent\textit{Wskazówka: #1}}

\newcommand{\setstopka}[1]{\def \cccustomstopka{#1}}

\newcommand{\stopka}{
    \ifcsname cccustomstopka\endcsname
        \blfootnote{\cccustomstopka}
    \else
    \ifcsname aaautor\endcsname
    \ifcsname gggender\endcsname
    \ifthenelse{\equal{\gggender}{M}}{\blfootnote{Materiały przygotował \aaautor.}}{
    \ifthenelse{\equal{\gggender}{F}}{\blfootnote{Materiały przygotowała \aaautor.}}{
    \ifthenelse{\equal{\gggender}{Ms}}{\blfootnote{Materiały przygotowali \aaautor.}}{
    \ifthenelse{\equal{\gggender}{Fs}}{\blfootnote{Materiały przygotowały \aaautor.}}{}}}}
    \else\fi\else\fi\fi}

\newcommand{\header}{
    \begin{flushright} \begin{tiny} 
    Lewin Kłodzki, listopad 2024    
    \end{tiny} \end{flushright}
    \vspace{0.3cm}
    
    \begin{center}
    {\bf \MakeUppercase{VIII Uniwersytecki Obóz Olimpiady Matematycznej}}
    \end{center}
    
    \vspace{1cm}

    \ifcsname tttemat\endcsname
    \begin{center}\begin{large}
    {\bf \tttemat}
    \end{large}\end{center}
    \else\fi
    
    \medskip
    
    \stopka
}

\AddToHook{begindocument/end}{
    \ifcsname uoomnoheader\endcsname
    \else
    \header
    \fi
}

\newcommand{\pokazrozw}{
    \def \xxxrozw{TAK}
}

\newcommand{\rozw}[1]{
    \ifcsname xxxrozw\endcsname
    
    \noindent{\color{red}Rozwiązanie: #1}
    
    \fi
}
