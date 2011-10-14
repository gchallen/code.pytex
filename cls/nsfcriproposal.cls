\NeedsTeXFormat{LaTeX2e}

% 22 Oct 2010 : GWA : New proposal class. Originally based on the
%               proposalnsf.cls file downloaded from here:
% http://www-pord.ucsd.edu/~sgille/how_to/proposal_prep.html

\RequirePackage{color}
\RequirePackage{calc}
\RequirePackage{mathpazo}
\RequirePackage{ulem}
\ProvidesClass{nsfcriproposal}[2010/10/22 GWA NSF CRI Proposal Class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions
\LoadClass[onecolumn,oneside,final]{memoir}
\RequirePackage{colortbl}
\RequirePackage{threeparttable}

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

\setheadfoot{0.1pt}{36pt}

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
\setlength{\lefttitle}{0.8\textwidth}
\setlength{\righttitle}{0.18\textwidth}

\makechapterstyle{proposal}{%
  \renewcommand{\chapterheadstart}{} 
  \renewcommand{\printchaptername}{} 
  \renewcommand{\chapternamenum}{} 
  \renewcommand{\printchapternum}{} 
  \renewcommand{\afterchapternum}{} 
  \renewcommand{\printchaptertitle}[1]{%
    \Large\scshape\MakeUppercase{##1}
  } 
  \renewcommand{\afterchaptertitle}{\vspace{0.5\onelineskip} \hrule \vspace{0.5\onelineskip}}
} 
\makechapterstyle{summary}{%
  \renewcommand{\chapterheadstart}{}
  \renewcommand{\printchaptername}{} 
  \renewcommand{\chapternamenum}{} 
  \renewcommand{\printchapternum}{} 
  \renewcommand{\afterchapternum}{} 
  \renewcommand{\printchaptertitle}[1]{
\noindent\begin{minipage}[t]{\lefttitle}
\vspace{0pt}
\raggedright
\Large\scshape{##1}
\vspace*{0.10in}
\end{minipage}
\hfill
\begin{minipage}[t]{\righttitle}
\vspace{0pt}
\raggedleft
{\small \scshape NSF Proposal\\
\submissiondate}
\end{minipage}
{\large\theauthors}
}
  \renewcommand{\afterchaptertitle}{\vspace{0.5\onelineskip} \hrule \vspace{0.3\onelineskip}}
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
  \large\bfseries\raggedright #1
}
\setsecheadstyle{\proposalsec}
\renewcommand{\thesection}{\arabic{section}}
\chapterstyle{proposal}

% 26 Oct 2010 : GWA : Section styles.
\setsecnumformat{\csname the#1\endcsname\space---\space}
\setbeforesecskip{-2.0ex plus -0.5ex minus -0.2ex}
\setaftersecskip{1.0ex plus 0.2ex minus 0.1ex}

% 26 Oct 2010 : GWA : Subsection styles.
\setcounter{secnumdepth}{3}
\setsubsecheadstyle{\bfseries\raggedright}
\setbeforesubsecskip{-0.5ex plus -0.2ex minus -0.2ex}
\setaftersubsecskip{0.3ex plus -0.2ex minus -0.2ex}
\setbeforesubsubsecskip{-0.5ex plus -0.2ex minus -0.2ex}
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

% 22 Nov 2010 : GWA : Research questions environment. Produces a running list
%               (i.e., counters do not reset) prefaced by "Q1", "Q2", etc.

\newcounter{researchquestionenum}
\newcounter{researchquestionenumtmp}
\newenvironment{researchquestions}{
  \savetrivseps
  \zerotrivseps
  \vspace{0.5em}
  \begin{framed}
  \vspace*{-0.5em}
  \begin{list}{\textbf{Q\arabic{researchquestionenum}.}}
    {\setlength{\leftmargin}{2em}}%
     \setlength{\labelwidth}{4em}
     \setlength{\itemindent}{0pt}
     \setlength{\labelsep}{0.5em}
     \setlength{\topsep}{0pt}
     \setlength{\partopsep}{0pt}
     \setlength{\parskip}{0pt}
     \usecounter{researchquestionenum}
     \setcounter{researchquestionenum}{\value{researchquestionenumtmp}}}
  {\end{list}
  \end{framed}
  \setcounter{researchquestionenumtmp}{\value{researchquestionenum}}
  \restoretrivseps}

\newcounter{researchtaskenum}
\newenvironment{researchtasks}{
  \begin{list}{\textbf{R\arabic{researchtaskenum}.}}
    {\setlength{\leftmargin}{2em}}%
     \setlength{\labelwidth}{4em}
     \setlength{\itemindent}{0pt}
     \setlength{\labelsep}{0.5em}
     \usecounter{researchtaskenum}}
  {\end{list}}

\newcounter{researchmethodsenum}
\newenvironment{researchmethods}{
  \begin{list}{\alph{researchmethodsenum}.}
    {\setlength{\leftmargin}{0pt}}%
     \setlength{\labelwidth}{0pt}
     \setlength{\itemindent}{0.5em}
     \setlength{\labelsep}{0.5em}
     \usecounter{researchmethodsenum}}
  {\end{list}}

\newcounter{broaderimpactenum}
\newcounter{broaderimpactenumtmp}
\newenvironment{broaderimpacts}{
  \savetrivseps
  \zerotrivseps
  \vspace{0.2em}
  \begin{framed}
  \vspace*{-0.5em}
  \begin{list}{\textbf{B\arabic{broaderimpactenum}.}}
    {\setlength{\leftmargin}{2em}}%
     \setlength{\labelwidth}{4em}
     \setlength{\itemindent}{0pt}
     \setlength{\labelsep}{0.5em}
     \setlength{\topsep}{0pt}
     \setlength{\partopsep}{0pt}
     \setlength{\parskip}{0pt}
     \usecounter{broaderimpactenum}
     \setcounter{broaderimpactenum}{\value{broaderimpactenumtmp}}}
  {\end{list}
  \end{framed}
  \setcounter{broaderimpactenumtmp}{\value{broaderimpactenum}}
  \restoretrivseps}

\newcounter{timeenumcounter}
\newenvironment{timeenum}{
  \savetrivseps
  \zerotrivseps
  \begin{list}{\textbf{t = \arabic{timeenumcounter}}}
    {\setlength{\leftmargin}{3em}}%
     \setlength{\labelwidth}{3em}
     \setlength{\itemindent}{0pt}
     \setlength{\labelsep}{1em}
     \usecounter{timeenumcounter}
     \setcounter{timeenumcounter}{-1}}
  {\end{list}
  \restoretrivseps}

\newenvironment{conclusion}{
  \savetrivseps
  \zerotrivseps
  \vspace{0.2em}
  \begin{framed}
  \vspace*{-0.5em}}
  {\end{framed}
  \restoretrivseps}

\newenvironment{tightcenter}{
  \savetrivseps
  \zerotrivseps
  \begin{center}}
  {\end{center}
  \restoretrivseps}

\newenvironment{tightcentertitle}{
  \savetrivseps
  \zerotrivseps
  \vspace*{0.1in}
  \begin{center}}
  {\end{center}
  \vspace*{0.1in}
  \restoretrivseps}

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

% 06 Dec 2010 : GWA : Figure and captioning commands.
\renewcommand{\thefigure}{\arabic{figure}}
\captiondelim{ --- }
\captionnamefont{\small\bfseries}
\captiontitlefont{\small}
\nonzeroparskip
\setlength{\parindent}{0pt}
