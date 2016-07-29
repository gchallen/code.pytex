\NeedsTeXFormat{LaTeX2e}

% 22 Oct 2010 : GWA : New proposal class. Originally based on the
%               proposalnsf.cls file downloaded from here:
% http://www-pord.ucsd.edu/~sgille/how_to/proposal_prep.html

\RequirePackage{threeparttable}
\RequirePackage{color}
\RequirePackage{calc}
\RequirePackage{mathpazo}
\RequirePackage{ulem}
\ProvidesClass{whitepaper}[2010/10/22 GWA Statements Class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions
\LoadClass[onecolumn,oneside,final]{memoir}
\RequirePackage{datetime}

% 22 Oct 2010 : GWA : Set up simple chapter headings.

\chapterstyle{article}

% 22 Oct 2010 : GWA : Used to be:
% \setlength{\paperheight}{11in}
% \setlength{\paperwidth}{8.5in}

\setstocksize{11in}{8.5in}
\settrimmedsize{11in}{8.5in}{*}
\settrims{0pt}{0pt}

% 22 Oct 2010 : GWA : Used to be:
% \setlength{\textwidth}{\paperwidth - 2in}
% \setlength{\textheight}{\paperheight - 2in}

%\settypeblocksize{9in}{6.5in}{*}

% 22 Oct 2010 : GWA : Used to be:
% \setlength{\oddsidemargin}{1in}
% \setlength{\evensidemargin}{1in}

\setlrmarginsandblock{1in}{1in}{*}

% 22 Oct 2010 : GWA : Used to be:
% \setlength{\topmargin}{1in}
% \setlength{\headheight}{0pt}
% \setlength{\headsep}{0pt}

\setulmarginsandblock{1in}{1in}{*}

% 22 Oct 2010 : GWA : Used to be:
% \setlength{\footskip}{36pt}
% \setlength{\headheight}{0pt}

\setheadfoot{36pt}{36pt}

% 22 Oct 2010 : GWA : Used to be:
% \setlength{\marginparsep}{0.5cm}
% \setlength{\marginparwidth}{1.5cm}

\setmarginnotes{0.5cm}{1.5cm}{0.1cm}

% 22 Oct 2010 : GWA : memoir command to actually apply the layout.

\checkandfixthelayout

% 22 Oct 2010 : GWA : Proposal page style.

\let\@internalcite\cite
  \def\fullcite{\def\citeauthoryear##1##2##3{##1, ##3}\@internalcite}
  \def\fullciteA{\def\citeauthoryear##1##2##3{##1}\@internalcite}
  \def\shortcite{\def\citeauthoryear##1##2##3{##2, ##3}\@internalcite}
  \def\shortciteA{\def\citeauthoryear##1##2##3{##2}\@internalcite}
  \def\citeyear{\def\citeauthoryear##1##2##3{##3}\@internalcite}

\newlength{\lefttitle}
\newlength{\righttitle}
\setlength{\lefttitle}{0.7\textwidth}
\setlength{\righttitle}{0.3\textwidth}

\mmddyyyydate
\makechapterstyle{proposal}{%
  \renewcommand{\chapterheadstart}{}
  \renewcommand{\printchaptername}{} 
  \renewcommand{\chapternamenum}{} 
  \renewcommand{\printchapternum}{} 
  \renewcommand{\afterchapternum}{} 
  \renewcommand{\printchaptertitle}[1]{
\noindent\begin{minipage}[t]{\lefttitle}
\vspace{0pt}
\raggedright
\LARGE\scshape\href{\thechapterlink}{\MakeUppercase{##1}}\\
{\Large\href{https://blue.cse.buffalo.edu/people/gwa/}{Geoffrey Challen}}
\end{minipage}%
\begin{minipage}[t]{\righttitle}
\vspace{0pt}
\raggedleft
\href{https://blue.cse.buffalo.edu}{\XeTeXLinkBox{\includegraphics[width=0.6in]{./figures/blue.jpg}}}\\
{\small\submissiondate}
\end{minipage}
}
  \renewcommand{\afterchaptertitle}{\vspace{0.5\onelineskip} \hrule \vspace{0.5\onelineskip}}
} 
\makechapterstyle{letter}{%
  \renewcommand{\chapterheadstart}{} 
  \renewcommand{\printchaptername}{} 
  \renewcommand{\chapternamenum}{} 
  \renewcommand{\printchapternum}{} 
  \renewcommand{\afterchapternum}{} 
  \renewcommand{\printchaptertitle}[1]{}
  \renewcommand{\afterchaptertitle}{}
} 
\definecolor{shadecolor}{gray}{0.9}
\newcommand{\proposalsec}[1]{%
  \Large\bfseries\scshape\raggedright #1
}
\setsecheadstyle{\proposalsec}
\nonzeroparskip
\setlength{\parindent}{0pt}
\renewcommand{\thesection}{\arabic{section}}
\chapterstyle{proposal}

% 26 Oct 2010 : GWA : Section styles.
\setsecnumformat{\csname the#1\endcsname\space---\space}
\setbeforesecskip{-2.0ex plus -0.5ex minus -0.2ex}
\setaftersecskip{1.5ex plus 0.2ex minus 0.1ex}

% 26 Oct 2010 : GWA : Subsection styles.
\setcounter{secnumdepth}{2}
\setsubsecheadstyle{\bfseries\raggedright}
\setbeforesubsecskip{2.5ex plus 0.3ex minus 0.3ex}
\setaftersubsecskip{1.5ex plus 0.3ex minus 0.3ex}
\setbeforesubsubsecskip{-1.0ex plus -0.2ex minus -0.2ex}
\setaftersubsubsecskip{-0.3ex plus -0.2ex minus -0.2ex}

\newcounter{flushenumbfenum}
\newenvironment{flushenumbf}{
  \begin{list}{\textbf{\arabic{flushenumbfenum}.}}
    {\setlength{\leftmargin}{0pt}}%
     \setlength{\labelwidth}{0pt}
     \setlength{\itemindent}{0.5em}
     \setlength{\labelsep}{0.5em}
     \usecounter{flushenumbfenum}}
  {\end{list}} 

\tightlists
\firmlists
\renewcommand{\bibname}{References}
\renewcommand{\thetable}{\arabic{table}}
\newenvironment{indentpar}[1]{
  \begin{list}{}%
           {\setlength{\leftmargin}{#1}}%
            \setlength{\itemindent}{0em}
            \setlength{\parskip}{0pt}
            \setlength{\parsep}{0pt}
            \setlength{\labelsep}{0em}}
  {\end{list}}

\copypagestyle{whitepaper}{headings}
%\addtopsmarks{whitepaper}{}{%
%\nouppercaseheads
%\createmark{chapter}{left}{nonumber}{}{}}
\makeoddhead{whitepaper}{{\scshape \small \shorttitle}}{}{{\scshape \small \shortauthors}}
\makeevenhead{whitepaper}{{\scshape \small \shorttitle}}{}{{\scshape \small \shortauthors}}
\makeoddfoot{whitepaper}{}{\thepage}{}
\makeevenfoot{whitepaper}{}{\thepage}{}

\copypagestyle{emptywhitepaper}{whitepaper}
\makeoddfoot{emptywhitepaper}{}{}{}
\makeevenfoot{emptywhitepaper}{}{}{}

\copypagestyle{chapter}{whitepaper}
\makeoddfoot{chapter}{}{}{}
\makeevenfoot{chapter}{}{}{}
\makeoddhead{chapter}{}{}{}
\makeevenhead{chapter}{}{}{}
