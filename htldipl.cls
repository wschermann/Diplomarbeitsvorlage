%% htldipl.cls
%% Modifiziert von: Wolfgang Schermann
%% Ursprünglich: hgbthesis.cls
%% Ursprünglicher Autor: Wilhelm Burger (wilhelm.burger@fh-hagenberg.at)

\NeedsTeXFormat{LaTeX2e}
\newcommand{\htldiplDate}{2015/07/09} %Versionsdatum
\ProvidesClass{htldipl}[\htldiplDate\space LaTeX-Vorlage fuer Diplomarbeiten
der HTL Wiener Neustadt]

\author{ }

\RequirePackage{ifthen}

\newcommand{\htl@MainLanguage}{german}	% also referenced in htl.sty
\newcommand{\htl@DoubleSided}{oneside}
\newcommand{\@datitelseiten}{}
\newcommand{\@maketitlepages}{\@datitelseiten}  %default: Diplomarbeit


%% begin class options ---------------------------------------------
\DeclareOption{diplom}{\renewcommand{\@maketitlepages}{\@datitelseiten}}
\DeclareOption{english}{\renewcommand{\htl@MainLanguage}{english}}
\DeclareOption{german}{\renewcommand{\htl@MainLanguage}{german}}
\DeclareOption{oneside}{\renewcommand{\htl@DoubleSided}{oneside}}
\DeclareOption{twoside}{\renewcommand{\htl@DoubleSided}{twoside}}
\DeclareOption*{\ClassWarning{htldipl}{Unknown document option
"\CurrentOption"}}
\ProcessOptions
%% end class options ---------------------------------------------
 
\ifthenelse{\equal{\htl@DoubleSided}{oneside}}%
	{\LoadClass[a4paper,11pt,oneside]{book} }{}
\ifthenelse{\equal{\htl@DoubleSided}{twoside}}%
	{\LoadClass[a4paper,11pt,twoside]{book}%
	 \RequirePackage{emptypage}}{}

 
\RequirePackage{htl}[2015/07/09]	% load associated style file htl.sty

\RequirePackage[xindy, toc]{glossaries}

%-------------- Setup für Seiten im Front-Teil --------------------

\newcommand{\@abteilung}{\@MissingArg{Abteilung??}}
\newcommand{\abteilung}[1]{%
	\renewcommand{\@abteilung}{#1}
}

\newcommand{\@schwerpunkt}{\@MissingArg{Schwerpunkt??}}
\newcommand{\schwerpunkt}[1]{%
	\renewcommand{\@schwerpunkt}{#1}
}

\newcommand{\@studienort}{\@MissingArg{Studienort??}}
\newcommand{\studienort}[1]{%
	\renewcommand{\@studienort}{#1}
}

\newcommand{\@betreuerA}{\@MissingArg{BetreuerA??}}
\newcommand{\betreuerA}[1]{%
	\renewcommand{\@betreuerA}{#1}
}

\newcommand{\@betreuerB}{\@MissingArg{BetreuerB??}}
\newcommand{\betreuerB}[1]{%
	\renewcommand{\@betreuerB}{#1}
}

\newcommand{\@betreuerC}{\@MissingArg{BetreuerC??}}
\newcommand{\betreuerC}[1]{%
	\renewcommand{\@betreuerC}{#1}
}

\newcommand{\@betreuerD}{\@MissingArg{BetreuerD??}}
\newcommand{\betreuerD}[1]{%
	\renewcommand{\@betreuerD}{#1}
}

\newcommand{\@betreuerE}{\@MissingArg{BetreuerE??}}
\newcommand{\betreuerE}[1]{%
	\renewcommand{\@betreuerE}{#1}
}

\newcommand{\@gegenstand}{\@MissingArg{Gegenstand??}}
\newcommand{\gegenstand}[1]{%
	\renewcommand{\@gegenstand}{#1}
}

\newcommand{\@abgabejahr}{\@MissingArg{Jahr??}}
\newcommand{\abgabejahr}[1]{%
	\renewcommand{\@abgabejahr}{#1}
} 

\newcommand{\@schule}{\@MissingArg{Schule??}}
\newcommand{\schule}[1]{%
	\renewcommand{\@schule}{#1}
}

\newcommand{\@schullogo}{\@MissingArg{Schullogo??}}
\newcommand{\schullogo}[1]{%
	\renewcommand{\@schullogo}{#1}
}

\newcommand{\@schuelerA}{\@MissingArg{SchuelerA??}}
\newcommand{\schuelerA}[1]{%
	\renewcommand{\@schuelerA}{#1}
}

\newcommand{\@schuelerB}{\@MissingArg{SchuelerB??}}
\newcommand{\schuelerB}[1]{%
	\renewcommand{\@schuelerB}{#1}
}

\newcommand{\@schuelerC}{\@MissingArg{SchuelerC??}}
\newcommand{\schuelerC}[1]{%
	\renewcommand{\@schuelerC}{#1}
}

\newcommand{\@schuelerD}{\@MissingArg{SchuelerD??}}
\newcommand{\schuelerD}[1]{%
	\renewcommand{\@schuelerD}{#1}
}

\newcommand{\@schuelerE}{\@MissingArg{SchuelerE??}}
\newcommand{\schuelerE}[1]{%
	\renewcommand{\@schuelerE}{#1}
}

\newcommand{\@schuelerF}{\@MissingArg{SchuelerF??}}
\newcommand{\schuelerF}[1]{%
	\renewcommand{\@schuelerF}{#1}
}

\newcommand{\@schuelerG}{\@MissingArg{SchuelerG??}}
\newcommand{\schuelerG}[1]{%
	\renewcommand{\@schuelerG}{#1}
}

\newcommand{\@evidenzA}{\@MissingArg{EvidenzA??}}
\newcommand{\evidenzA}[1]{%
	\renewcommand{\@evidenzA}{#1}
}

\newcommand{\@evidenzB}{\@MissingArg{EvidenzB??}}
\newcommand{\evidenzB}[1]{%
	\renewcommand{\@evidenzB}{#1}
}

\newcommand{\@evidenzC}{\@MissingArg{EvidenzC??}}
\newcommand{\evidenzC}[1]{%
	\renewcommand{\@evidenzC}{#1}
}

\newcommand{\@evidenzD}{\@MissingArg{EvidenzD??}}
\newcommand{\evidenzD}[1]{%
	\renewcommand{\@evidenzD}{#1}
}

\newcommand{\@evidenzE}{\@MissingArg{EvidenzE??}}
\newcommand{\evidenzE}[1]{%
	\renewcommand{\@evidenzE}{#1}
}

\newcommand{\@evidenzF}{\@MissingArg{EvidenzF??}}
\newcommand{\evidenzF}[1]{%
	\renewcommand{\@evidenzF}{#1}
}

\newcommand{\@evidenzG}{\@MissingArg{EvidenzG??}}
\newcommand{\evidenzG}[1]{%
	\renewcommand{\@evidenzG}{#1}
}

%------------------ Titelseite -------------------

\newcommand{\@datitel}{%
\begin{titlepage}%
\rule{0mm}{1mm}
\includegraphics[height=30px]{\@schullogo}\hfill\includegraphics[height=30px]{htl_allgemein.jpg}
\begin{center}%
  \setlength{\unitlength}{1cm}
  	{\Large\@schule}
  	\vskip 0mm%
  	{Höhere Lehranstalt für \@abteilung}
  	\vskip 0mm%
  	{Ausbildungsschwerpunkt \@schwerpunkt}
  	\vskip 10mm%
    {\Huge\bf D\,I\,P\,L\,O\,M\,A\,R\,B\,E\,I\,T}%
    \vskip 10mm%
  	\begin{picture}(12,4)
  		\put(0,1.8){\parbox{12cm}{\centering\huge\bf\setlength{\baselineskip}{20pt}\@title}}
  	\end{picture}
\end{center}
\vskip 10mm%
    {\large\bf Ausgeführt im Schuljahr \@abgabejahr\ von:} 
    \begin{tabbing}
    \hspace*{1cm}\=\hspace*{8cm}\=\hspace*{5cm}\= \kill
    	\> \@schuelerA \> \@evidenzA \\
    	\> \@schuelerB \> \@evidenzB \\ 
    	\> \@schuelerC \> \@evidenzC \\ 
    	\> \@schuelerD \> \@evidenzD \\ 
    	\> \@schuelerE \> \@evidenzE \\ 
    	\> \@schuelerF \> \@evidenzF \\ 
    	\> \@schuelerG \> \@evidenzG \\ 
    \end{tabbing}
    {\large\bf Betreuer / Betreuerin:}
    \begin{tabbing}
    \hspace*{1cm}\=\hspace*{5cm}\= \kill
    	\> \@betreuerA \\
    	\> \@betreuerB \\ 
    	\> \@betreuerC \\ 
    	\> \@betreuerD \\ 
    	\> \@betreuerE \\ 
    \end{tabbing}
    {\large \@studienort, am \today}%
  \par\vfil\null
\end{titlepage}%
}


%------------------ Copyright-Seite -------------------
\newcommand{\@copyrightseite}{%
\newpage
\setcounter{page}{2}
\thispagestyle{plain}
\rule{0mm}{1mm}
\vspace*{75mm}
\begin{center}
\ifthenelse{\equal{\htl@MainLanguage}{german}}%
	{\copyright\ Copyright\ \@abgabejahr\ \@author\\
	\vspace{3mm} Alle Rechte vorbehalten}{}
\ifthenelse{\equal{\htl@MainLanguage}{english}}%
	{\copyright\ Copyright\ \@abgabejahr\ \@author\\
	\vspace{3mm} All Rights Reserved}{}
%\vspace{75mm} \copyright\ Copyright\ \@author\ \@abgabejahr\\
\end{center}
}


\newcommand{\@erklaerungsseite}{%
\chapter{Eidesstattliche Erklärung}
%\thispagestyle{empty}

\noindent
Hiermit erkläre ich an Eides statt, dass ich die vorliegende Arbeit
selbst\-ständig und ohne fremde Hilfe verfasst, andere als die angegebenen
Quellen und Hilfsmittel nicht benutzt und die den benutzten Quellen wörtlich und inhaltlich entnommenen Stellen als solche erkenntlich gemacht habe.

\vspace{10mm}
\noindent
\@studienort, am \today

\vspace{12mm}
\noindent
{\large\bf Verfasser / Verfasserinnen:} 
    \begin{tabbing}
    \hspace*{7cm}\=\hspace*{7cm}\= \kill
    	\\
    	\\
    	\\
    	\\
    	\@schuelerA \> \@schuelerB \\
    	\\ 
    	\\
    	\\
    	\\
    	\@schuelerC \> \@schuelerD \\ 
    	\\ 
    	\\
    	\\
    	\\
    	\@schuelerE \> \@schuelerF \\ 
    	\\ 
    	\\
    	\\
    	\\
    	\@schuelerG \\ 
    \end{tabbing}
}

%------------ Struktur der Frontseiten -------------------
     
\renewcommand{\@datitelseiten}{
\@datitel
%\@copyrightseite
\@erklaerungsseite
}


\renewcommand{\maketitle}{	%replace standard LaTeX-command
\hypersetup{
		pdftitle={\@title},
		pdfauthor={\@author},
		pdfsubject={\@abteilung, \@studienort},
		pdfcreator={LaTeX using class htldipl},
		pdfproducer={},
		pdfkeywords={}
}%
\@maketitlepages
}

%% Headings -------------------------------------------------------------

\RequirePackage{fancyhdr}
\pagestyle{fancy}

\@ifundefined{chapter}%
   {}%
	 {\renewcommand{\chaptermark}[1]{%
			\ifthenelse{\value{chapter} < 1}%
				{\markboth{#1}{}}%
				{\markboth{\thechapter.\ #1}{}}
		}}

\addtolength{\headheight}{\baselineskip}
\renewcommand{\headrulewidth}{0pt} %% thin line under header
%\renewcommand{\headrulewidth}{0.4pt} %% no line under header
\renewcommand{\footrulewidth}{0pt}
\fancyhf{}                            %% Clear all fields.
%\fancyhead[LE,RO]{\sffamily\thepage} %{\bf \rightmark}
%\fancyhead[LO,RE]{\sffamily\nouppercase{\leftmark}}  %{\slshape \leftmark}
\fancyhead[R]{\sffamily\thepage} %{\bf \rightmark}
\fancyhead[L]{\sffamily\nouppercase{\leftmark}}  %{\slshape \leftmark}

\fancypagestyle{plain}{%
	\fancyhf{} % clear all header and footer fields
	\fancyfoot[C]{\sffamily\thepage} % except the center
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
}

%%-------------------------------------------------------------



\endinput

