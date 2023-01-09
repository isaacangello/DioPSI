#!/bin/bash
# '/segundo/{/falou/{s/segundo.*falou//;t};:a;/falou/!{N;s/\n//;ta;};s/segundo.*falou/\n/;}'
# sed '/^$/d'
#echo "foi"
arquivo=$1
tmparqapt=aptprogs.txt
tmparqflat=flatprogs.txt
tmparqsnap=snapprogs.txt
#read isc
if [  -z $arquivo  ] ; then
echo "
  cadê o arquivo?


  "
exit 1
fi
if [ -f $tmparqapt ];then rm -f $tmparqapt ;fi
if [ -f $tmparqflat ];then rm -f $tmparqflat ;fi
if [ -f $tmparqsnap ];then rm -f $tmparqsnap ;fi
#read isc
sed -n '/APT/,/TPA/p' $arquivo > $tmparqapt
sed -n '/FLAT/,/TALF/p' $arquivo > $tmparqflat
sed -n '/SNAP/,/PANS/p' $arquivo > $tmparqsnap
sed -i 's/APT/ /g' $tmparqapt
sed -i 's/TPA/ /g' $tmparqapt
sed -i 's/FLAT/ /g' $tmparqflat
sed -i 's/TALF/ /g' $tmparqflat
sed -i 's/SNAP/ /g' $tmparqsnap
sed -i 's/PANS/ /g' $tmparqsnap
sed -i '/^$/d' $tmparqapt
sed -i '/^$/d' $tmparqflat
sed -i '/^$/d' $tmparqsnap

#read isc
#exit 0
function rodar(){
    arquivo_param=$1
    while IFS= read -r linha || [[ -n "$linha" ]]; do
      #echo "$linha"
      for palavra in $(echo $linha)
        do
          echo "Instalando $palavra via $2"
          sleep 1
          # faça algo mais interessante aqui...
        done
      # faça algo mais interessante aqui...
    done < "$arquivo_param"
}
