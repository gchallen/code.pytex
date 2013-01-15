\NeedsTeXFormat{LaTeX2e}

\RequirePackage{color}
\RequirePackage{calc}
\RequirePackage{mathpazo}
\RequirePackage{ulem}
\ProvidesClass{amc}[2010/10/22 GWA AMC Exam Class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions
\LoadClass[onecolumn,oneside,final]{memoir}
\let\footruleskip\undefined
\RequirePackage[box,completemulti,separateanswersheet,digits,outsidebox]{automultiplechoice}
\RequirePackage{datetime}
\RequirePackage{colortbl}
\RequirePackage{threeparttable}
\RequirePackage{fancyvrb}

\nonzeroparskip
\setlength{\parindent}{0pt}
\renewcommand{\thetable}{\arabic{table}}

\usdate

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

\tightlists
\firmlists
