#!/bin/bash

apt_text=`cat ./programas.txt | grep apt | sed 's/apt/ /'`
num_words=0
passo=0
perc=0
for word in $(echo $apt_text)
do
num_words=`expr $num_words + 1`
done
echo $num_words
#read isc
#$num_words
(
for word in $(echo $apt_text)
do
 #perc=0
 passo=`expr $passo + 1`
 perc=`expr $passo \* 100 / $num_words`
 apt install $word -y
 echo $perc
 #read isc
done
)|
zenity --progress \
  --title="Dio PSI" \
  --text="Instalano programas via apt." \
  --auto-close \
  --percentage=0
