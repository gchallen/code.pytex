\NeedsTeXFormat{LaTeX2e}

\RequirePackage{color}
\RequirePackage{calc}
\RequirePackage{mathpazo}
\RequirePackage{ulem}
\RequirePackage[box,completemulti,separateanswersheet,digits,outsidebox]{automultiplechoice}
\ProvidesClass{amc}[2010/10/22 GWA AMC Exam Class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions
\LoadClass[onecolumn,oneside,final]{memoir}
