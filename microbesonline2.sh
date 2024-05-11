#download all operons from microbes online
#r allows for recursive downloads within directories
#np means no parent directories will be accessed (ie the home page)
#k means the files will be converted to local copies insetad of just links
#p means the page requisites will also be downloaded
wget -r -np -k -p http://www.microbesonline.org/operons/OperonList.html --directory-prefix=/Users/jade/Downloads/

#write code to extract names that are 'true' - this means they form operons
#if results in the 'bOp' [7] column are TRUE - copy names [5],[6]


#!/bin/bash
cd "$(Users/jade/Downloads/www.microbesonline.org/operons "$0")"

for i in *.html; do
    awk -f 'TRUE{print[5],[6]}' $i > $i.out
done



awk 'FNR==1 && NR!=1 {next;}TRUE{print}' *.html > operons.txt

cat *.html > all.csv

