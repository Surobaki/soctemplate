# SOČ Thesis Class
This TeX class is designed for A4 format with an 11 point font. This version is set for Slovak input encoding (line 6 in class file).

## Dependencies
Requires ISO 690 and ISO 690-2 bibliography citing capability (using `biblatex-iso690`) due to the Czechoslovak usage of the norms in scientific works.

## Installation
### TeXLive
1. Put .cls file into `{TeXLive installation directory}\texmf-local\tex\latex\local`
2. Execute `texhash` command
### MiKTex

## Custom commands
* **\B**  
Equivalent to \textbf
* **\It**  
Equivalent to \textit
* **\maketitle**  
Redefined to be in accordance with SOČ standard
* **\makecopyrightstatement{argument}**  
Creates copyright statement according to Slovak copyright law. Argument is in format of local grammatical case, e.g. \makecopyrightstatement{V Bratislave}.
* **\makethanks{argument}**  
Creates thanking message on the bottom. Argument is personal thanking message.

## Sizing
* 4 millimeter horizontal offset for round binder holes
* 5 millimeter image margin
* 15 point margin separator
* Single unit is 1 mm

## Naming scheme
* Section set to Kapitola
* Figure set to Obrázok
* Table set to Tabuľka

## Variables
Note: All variables need to be initialised, even if empty
* **titlesk**  
Slovak title of thesis
* **titleen**  
English title of thesis
* **author**  
Thesis author
* **school**  
Author's attended school
* **city**  
Origin location
* **region**  
County or region of thesis (i.e. Bratislavský kraj)
* **mentor**  
Mentor responsible for looking over thesis production
* **mentorstatement**  
Mentor's name in genitive grammatical case
* **field**  
Field to which the thesis belongs, for field options see below

## Professional fields  
Due to the SOČ categories changing annually, this is subject to change. Currently lists 17 categories:
1. Problematika voľného času
2. Matematika, fyzika
3. Chémia
4. Biológia
5. Životné prostredie, geografia, geológia
6. Zdravotníctvo, farmakológia
7. Pôdohospodárstvo (poľnohospodárstvo, lesné a vodné hospodárstvo
8. Cestovný ruch, hotelierstvo, gastronómia
9. Strojárstvo, hutníctvo, doprava
10. Stavebníctvo, geodézia, kartografia
11. Informatika
12. Elektrotechnika, hardware, mechatronika
13. História, filozofia, právne vedy
14. Tvorba učebných pomôcok, didaktické technológie
15. Ekonomika a riadenie
16. Teória kultúry, umenie, umelecká, odevná tvorba
17. Pedagogika, psychológia, sociológia
