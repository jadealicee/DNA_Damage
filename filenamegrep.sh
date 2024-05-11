#grepping certain patterns in the html files to find the organism names
#there is definitely an easier way to do this - look into that at some point
#possibility of grepping the <title> from the html page? 

##organisms of interest due to lack of named second gene##

grep -H 'NP1518A' *.html
#gnc348780.html:<TD valign=top align=left>NP1518A</TD>
#gnc348780.html:<TD valign=top align=left>NP1518A</TD>

grep -H 'APE_0109.1' *.html
#gnc272557.html:<TD valign=top align=left>APE_0109.1</TD>
#gnc272557.html:<TD valign=top align=left>APE_0109.1</TD>

grep -H 'Saci_0053' *.html
#gnc330779.html:<TD valign=top align=left>Saci_0053</TD>
#gnc330779.html:<TD valign=top align=left>Saci_0053</TD>

grep -H 'MMP1342' *.html
#gnc267377.html:<TD valign=top align=left>MMP1342</TD>

##all the rest##

grep -H 'HQ1700A' *.html
#gnc362976.html:<TD valign=top align=left>HQ1700A</TD>

grep -H 'mru_1105' *.html
#gnc634498.html:<TD valign=top align=left>mru_1105</TD>
#gnc634498.html:<TD valign=top align=left>mru_1105</TD>

grep -H 'Msp_1094' *.html
#gnc339860.html:<TD valign=top align=left>Msp_1094</TD>
#gnc339860.html:<TD valign=top align=left>Msp_1094</TD>

grep -H 'Saci_0050' *.html
#gnc330779.html:<TD valign=top align=left>Saci_0050</TD>

grep -H 'Saci_0051' *.html
#gnc330779.html:<TD valign=top align=left>Saci_0051</TD>
#gnc330779.html:<TD valign=top align=left>Saci_0051</TD>

grep -H 'HVO_0853' *.html
#gnc309800.html:<TD valign=top align=left>HVO_0853</TD>

grep -H 'TGAM_1741' *.html
#gnc593117.html:<TD valign=top align=left>TGAM_1741</TD>
#gnc593117.html:<TD valign=top align=left>TGAM_1741</TD>

grep -H 'TGAM_1742' *.html
#gnc593117.html:<TD valign=top align=left>TGAM_1742</TD>
#gnc593117.html:<TD valign=top align=left>TGAM_1742</TD>

grep -H 'TGAM_1743' *.html
#gnc593117.html:<TD valign=top align=left>TGAM_1743</TD>
#gnc593117.html:<TD valign=top align=left>TGAM_1743</TD>

grep -H 'MMP1340' *.html
#gnc267377.html:<TD valign=top align=left>MMP1340</TD>



