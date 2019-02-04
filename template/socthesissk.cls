\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{socthesissk}[2018/01/27 Document class for Slovak SOC theses]
\LoadClass[11pt, a4paper, oneside]{book}

\RequirePackage[utf8]{inputenc}
\RequirePackage[slovak]{babel}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{array}
\RequirePackage[bookmarksopen,colorlinks,plainpages=false,linkcolor=black,urlcolor=blue,citecolor=black,filecolor=black,menucolor=black,unicode=true,breaklinks]{hyperref}
\RequirePackage{csquotes}
\RequirePackage[backend=bibtex,bibstyle=numeric,sorting=none,date=long,dateabbrev=false,texencoding=utf8,bibencoding=utf8,style=iso-numeric]{biblatex}
\RequirePackage{caption}


%%%%%% PRÍKAZY
\newcommand{\B}{\textbf} % tučné písmo
\newcommand{\It}{\textit} % kurzíva

%%%%%% ROZMERY

% posun textu kvôli krúžkovej väzbe
% \addtolength{\textwidth}{mm}
\addtolength{\hoffset}{4mm}

\setlength{\intextsep}{5mm} % nastavenie medzery okolo obrázkov
\marginparsep=15pt
\linespread{1.3}
\unitlength=1mm % nastavenie voľby jednotiek

%%%%%% ROVNICE
\DeclareCaptionType{listedequation}[Rovnice][Zoznam rovníc]
% \captionsetup[listedequation]{labelformat = parens}

%% hyperref \autoref názvy
\def\sectionautorefname{Kapitola}
\def\figureautorefname{Obrázok}
\def\tableautorefname{Tabuľka}


%%%%%% PREMENNÉ
\def\titlesk#1{\def\@titlesk{#1}}
\def\titleen#1{\def\@titleen{#1}}
\def\author#1{\def\@author{#1}}
\def\school#1{\def\@school{#1}}
\def\city#1{\def\@city{#1}}
\def\region#1{\def\@region{#1}}
\def\mentor#1{\def\@mentor{#1}}
\def\mentorstatement#1{\def\@mentorstatement{#1}}
\def\placefooter#1{\def\@placefooter{#1}}

\RequirePackage{xstring}
\newcommand{\field}[1]{
\IfStrEqCase{#1}{
    {1}{\def\@field{1. Problematika voľného času}}
    {2}{\def\@field{2. Matematika, fyzika}}
    {3}{\def\@field{3. Chémia}}
    {4}{\def\@field{4. Biológia}}
    {5}{\def\@field{5. Životné prostredie, geografia, geológia}}
    {6}{\def\@field{6. Zdravotníctvo, farmakológia}}
    {7}{\def\@field{7. Pôdohospodárstvo (poľnohospodárstvo, lesné a~vodné hospodárstvo)}}
    {8}{\def\@field{8. Cestovný ruch, hotelierstvo, gastronómia}}
    {9}{\def\@field{9. Strojárstvo, hutníctvo, doprava}}
    {10}{\def\@field{10. Stavebníctvo, geodézia, kartografia}}
    {11}{\def\@field{11. Informatika}}
    {12}{\def\@field{12. Elektrotechnika, hardware, mechatronika}}
    {13}{\def\@field{13. História, filozofia, právne vedy}}
    {14}{\def\@field{14. Tvorba učebných pomôcok, didaktické technológie}}
    {15}{\def\@field{15. Ekonomika a riadenie}}
    {16}{\def\@field{16. Teória kultúry, umenie, umelecká, odevná tvorba}}
    {17}{\def\@field{17. Pedagogika, psychológia, sociológia}}
  }
  [Neznáme číslo odboru, upravte \\field{} príkaz!]
}

% \placefooter{\@city\enspace\the\year}
\placefooter{
	\noindent\begin{tabular}{lll} % [t]{@{}} 
		\the\year \\
		\@city \\
	\end{tabular}
	\hfill
	\begin{tabular}[t]{r@{}}  
		Riešitelia \\
		\B\@author \\
		Ročník štúdia: štvrtý \\	
	\end{tabular}
}
\mentorstatement{\@mentor}

%%% Titulné strany
\renewcommand{\maketitle}{
	\pagestyle{empty}
	\voffset = -20mm % posun začiatku textu vyššie
    \enlargethispage{40mm} % zväčší oblasť tlače pre túto stránku
	\begin{center}
	    {\large{\B{STREDOŠKOLSKÁ ODBORNÁ ČINNOSŤ}}} \\
	    \vspace{5mm}
		\normalsize{\B{Odbor: \@field}} \\

		\vspace{40mm}

		{\LARGE{\B{\@titlesk}}} \\

		\vfill

		\vspace{20mm}

		{\large{\B{\@placefooter}}}
	\end{center}
	\newpage

	\pagestyle{empty}
    \enlargethispage{40mm} % zväčší oblasť tlače pre túto stránku
	\begin{center}
	    {\large{\B{STREDOŠKOLSKÁ ODBORNÁ ČINNOSŤ}}} \\

		\vspace{40mm}

		{\Large{\B{\expandafter\MakeUppercase\expandafter{\@titlesk}}}} \\
		\vspace{20mm}
		{\large{\B{\expandafter\MakeUppercase\expandafter{\@titleen}}}} \\

		\vfill

        \begin{table}[h]
        \setlength{\tabcolsep}{12pt}
        \renewcommand{\arraystretch}{1.5}
        \linespread{1.0}
		\begin{tabularx}{\textwidth}{r >{\raggedright}p{90mm} c}
		\large{\B{AUTOR}} & \large{\B{\@author}} & \\
		\large{\B{ŠKOLA}} & \large{\B{\@school}} & \\
		\large{\B{KRAJ}} & \large{\B{\@region}} & \\
		\large{\B{ŠKOLITEĽ}} & \large{\B{\@mentor}} & \\
		\large{\B{ODBOR}} & \large{\B{\@field}} & \\
		\end{tabularx}
		\setlength{\tabcolsep}{6pt}
        \renewcommand{\arraystretch}{1.0}
		\end{table}

		\vspace{10mm}

		{\large{\B{\@placefooter}}}
	\end{center}
	\newpage
	\voffset = 0mm
	\pagestyle{plain}
}

%%% Prehlásenie
\newcommand{\makecopyrightstatement}[1]{
	\pagestyle{empty}

	~
	\vfill

	\section*{Čestné prehlásenie}
	Čestne prehlasujem, že svoju prácu na tému \It{\@titlesk} som vypracoval/a samostatne pod vedením {\@mentorstatement} a~s~použitím odbornej literatúry a~ďalších informačných zdrojov, ktoré sú všetky citované v~práci a~uvedené v~zozname literatúry na~konci práce.

	Ďalej prehlasujem, že tlačená a~elektronická verzia práce SOČ je zhodná a~nemám závažný dôvod proti sprístupňovaniu tejto práce v~súlade so~zákonom č.~618/2003~Z.z., o~autorskom práve a~právach súvisiacich s~autorským právom (autorský zákon) v~platnom znení.

	\vspace{10mm}

	\noindent \parbox{\textwidth}{
		\noindent {#1} dňa: \rule{4cm}{1pt}
		\hfill\parbox{5cm}{
    		\centering
    		\vspace{9mm}
    		\rule{5cm}{1pt}\\
        	\@author
		}
	}

	\newpage
	\pagestyle{plain}
}

\newcommand{\makethanks}[1]{
	\pagestyle{empty}
	~
	\vfill
	\section*{Poďakovanie}
	{#1}


	\newpage
	\pagestyle{plain}
}




