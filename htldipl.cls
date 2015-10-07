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
\newcommand{\htl@Colorcode}{color}
\newcommand{\@datitelseiten}{}
\newcommand{\@maketitlepages}{\@datitelseiten}  %default: Diplomarbeit


%% begin class options ---------------------------------------------
\DeclareOption{diplom}{\renewcommand{\@maketitlepages}{\@datitelseiten}}
\DeclareOption{english}{\renewcommand{\htl@MainLanguage}{english}}
\DeclareOption{german}{\renewcommand{\htl@MainLanguage}{german}}
\DeclareOption{oneside}{\renewcommand{\htl@DoubleSided}{oneside}}
\DeclareOption{twoside}{\renewcommand{\htl@DoubleSided}{twoside}}
\DeclareOption{color}{\renewcommand{\htl@Colorcode}{color}}
\DeclareOption{black}{\renewcommand{\htl@Colorcode}{black}}
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

\RequirePackage[toc]{glossaries}

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



\newcommand{\@subthemaA}{\@MissingArg{SubthemaA??}}
\newcommand{\subthemaA}[1]{%
	\renewcommand{\@subthemaA}{#1}
}

\newcommand{\@subthemaB}{\@MissingArg{SubthemaB??}}
\newcommand{\subthemaB}[1]{%
	\renewcommand{\@subthemaB}{#1}
}

\newcommand{\@subthemaC}{\@MissingArg{SubthemaC??}}
\newcommand{\subthemaC}[1]{%
	\renewcommand{\@subthemaC}{#1}
}

\newcommand{\@subthemaD}{\@MissingArg{SubthemaD??}}
\newcommand{\subthemaD}[1]{%
	\renewcommand{\@subthemaD}{#1}
}

\newcommand{\@subthemaE}{\@MissingArg{SubthemaE??}}
\newcommand{\subthemaE}[1]{%
	\renewcommand{\@subthemaE}{#1}
}

%------------------ Titelseite -------------------

\newcommand{\@datitel}{%
\begin{titlepage}%
	\begin{center}%
	\parbox[b][4cm]{3cm}{
	\includegraphics[width=30mm]{\@schullogo}
	}
	\parbox[b][4cm]{8.5cm}{
  		\centering\Large\@schule
  		\vskip 0mm%
  		\small{Höhere Lehranstalt für \@abteilung}
  		\vskip 0mm%
  		{\@schwerpunkt}
	}%
	\parbox[b][4cm]{3cm}{
  	\includegraphics[width=30mm]{htl_allgemein.jpg}
  	}
\end{center}
\rule{\textwidth}{1pt}
\begin{center}%
  \setlength{\unitlength}{1cm}
  	
  	\vskip 10mm%
    {\Huge\bf D\,I\,P\,L\,O\,M\,A\,R\,B\,E\,I\,T}%
    \vskip 10mm%
  	\begin{picture}(12,4)
  		\put(0,1.8){\parbox{12cm}{\centering\huge\bf\setlength{\baselineskip}{20pt}\@title}}
  	\end{picture}
\end{center}
\vskip 0mm%
    {\large\bf Ausgeführt im Schuljahr \@abgabejahr\ von:} 
    \begin{tabbing}
    \hspace*{1cm}\=\hspace*{8cm}\=\hspace*{5cm}\= \kill
	\> \@subthemaA  \> \\    
    	\> \@schuelerA \> \@evidenzA \\
    	\\
    	\> \@subthemaB  \> \\  
    	\> \@schuelerB \> \@evidenzB \\ 
    	\\
    	\> \@subthemaC  \> \\  
    	\> \@schuelerC \> \@evidenzC \\ 
    	\\
    	\> \@subthemaD  \> \\  
    	\> \@schuelerD \> \@evidenzD \\ 
    	\\
    	\> \@subthemaE  \> \\  
    	\> \@schuelerE \> \@evidenzE \\ 
    \end{tabbing}
    {\large\bf Betreuer / Betreuerin:}
    \begin{tabbing}
    \hspace*{1cm}\=\hspace*{5cm}\= \kill
    	\> \@betreuerA \\
    	\> \@betreuerB \\ 
    	\> \@betreuerC \\ 
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
    	\@schuelerE \>  \\ 
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

