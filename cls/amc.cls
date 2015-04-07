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
\RequirePackage[box,completemulti]{automultiplechoice}
\RequirePackage{datetime}
\RequirePackage{colortbl}
\RequirePackage{threeparttable}
\RequirePackage{fancyvrb}
\RequirePackage{amsmath}
\RequirePackage{MnSymbol}
\RequirePackage{wasysym}

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

\setheadfoot{48pt}{36pt}

% 22 Oct 2010 : GWA : Used to be:
% \setlength{\marginparsep}{0.5cm}
% \setlength{\marginparwidth}{1.5cm}

\setmarginnotes{0.5cm}{1.5cm}{0.1cm}

% 22 Oct 2010 : GWA : memoir command to actually apply the layout.

\checkandfixthelayout

\tightlists
\firmlists

\makechapterstyle{amc}{%
  \renewcommand{\chapterheadstart}{} 
  \renewcommand{\printchaptername}{} 
  \renewcommand{\chapternamenum}{} 
  \renewcommand{\printchapternum}{} 
  \renewcommand{\afterchapternum}{} 
  \renewcommand{\printchaptertitle}[1]{%
    \Large\scshape\MakeUppercase{##1}
  } 
  \renewcommand{\afterchaptertitle}{}
} 
\chapterstyle{amc}
\copypagestyle{headandfoot}{plain}

\def\firstpageheader#1#2#3{%
  \def\@lhead{#1}%
  \def\@chead{#2}%
  \def\@rhead{#3}%
}

\def\runningheader#1#2#3{%
  \def\run@lhead{#1}%
  \def\run@chead{#2}%
  \def\run@rhead{#3}%
}

\def\header#1#2#3{%
  \firstpageheader{#1}{#2}{#3}%
  \runningheader{#1}{#2}{#3}%
}

\def\firstpagefooter#1#2#3{%
  \def\@lfoot{#1}%
  \def\@cfoot{#2}%
  \def\@rfoot{#3}%
}

\def\runningfooter#1#2#3{%
  \def\run@lfoot{#1}%
  \def\run@cfoot{#2}%
  \def\run@rfoot{#3}%
}

\def\footer#1#2#3{%
  \firstpagefooter{#1}{#2}{#3}%
  \runningfooter{#1}{#2}{#3}%
}

\def\lhead{\@ifnextchar[{\@xlhead}{\@ylhead}}
\def\@xlhead[#1]#2{\def\@lhead{#1}\def\run@lhead{#2}}
\def\@ylhead#1{\def\run@lhead{#1}\def\@lhead{#1}}

\def\chead{\@ifnextchar[{\@xchead}{\@ychead}}
\def\@xchead[#1]#2{\def\@chead{#1}\def\run@chead{#2}}
\def\@ychead#1{\def\run@chead{#1}\def\@chead{#1}}

\def\rhead{\@ifnextchar[{\@xrhead}{\@yrhead}}
\def\@xrhead[#1]#2{\def\@rhead{#1}\def\run@rhead{#2}}
\def\@yrhead#1{\def\run@rhead{#1}\def\@rhead{#1}}

\def\lfoot{\@ifnextchar[{\@xlfoot}{\@ylfoot}}
\def\@xlfoot[#1]#2{\def\@lfoot{#1}\def\run@lfoot{#2}}
\def\@ylfoot#1{\def\run@lfoot{#1}\def\@lfoot{#1}}

\def\cfoot{\@ifnextchar[{\@xcfoot}{\@ycfoot}}
\def\@xcfoot[#1]#2{\def\@cfoot{#1}\def\run@cfoot{#2}}
\def\@ycfoot#1{\def\run@cfoot{#1}\def\@cfoot{#1}}

\def\rfoot{\@ifnextchar[{\@xrfoot}{\@yrfoot}}
\def\@xrfoot[#1]#2{\def\@rfoot{#1}\def\run@rfoot{#2}}
\def\@yrfoot#1{\def\run@rfoot{#1}\def\@rfoot{#1}}
