\NeedsTeXFormat{LaTeX2e}

% 22 Oct 2010 : GWA : New proposal class. Originally based on the
%               proposalnsf.cls file downloaded from here:
% http://www-pord.ucsd.edu/~sgille/how_to/proposal_prep.html

\RequirePackage{color}
\RequirePackage{calc}
\RequirePackage{mathpazo}
\RequirePackage{ulem}
\RequirePackage{inconsolata}
\ProvidesClass{CV}[2010/10/22 GWA White Paper Class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions
\LoadClass[onecolumn,oneside,final]{memoir}
\RequirePackage{colortbl}
\RequirePackage{datetime}
\RequirePackage{threeparttable}
\RequirePackage{extramarks}

\mmddyyyydate

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

\setlrmarginsandblock{1.5in}{1in}{*}

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

\setmarginnotes{0.2in}{0.8in}{0in}

% 22 Oct 2010 : GWA : memoir command to actually apply the layout.

\checkandfixthelayout

\setlength{\parindent}{0pt}

\newcommand{\html}[1]{\href{#1}{\scriptsize\textsc{[html]}}}
\newcommand{\pdf}[1]{\href{#1}{\scriptsize\textsc{[pdf]}}}
\newcommand{\doi}[1]{\href{#1}{\scriptsize\textsc{[doi]}}}

\newcommand{\years}[1]{\sidepar{\small #1}}
\setlength{\marginparsep}{0.2in}
\reversemarginpar

\setcounter{secnumdepth}{3}
\setsecheadstyle{\LARGE\upshape\raggedright}
\setsubsecheadstyle{\Large\upshape}
\renewcommand{\thesubsection}{\arabic{subsection}}
\setsecnumformat{\csname the#1\endcsname.\space\space}
