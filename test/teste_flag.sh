#!/bin/bash
# '/segundo/{/falou/{s/segundo.*falou//;t};:a;/falou/!{N;s/\n//;ta;};s/segundo.*falou/\n/;}'
# sed '/^$/d'
#echo "foi"
helpprint (){

            echo "
              Sintaxe
               comando  [flag]  arquivo
               Flags--------------------------------------------------------------------------
               --all       Instala utilizando todos os metodos disponíveis (apt,flatpack,snap)
                -a          Instala os programas utilizando metodo apt.
                -f          Instala os programas utilizando metodo flatpack.
                -s          Instala os programas utilizando metodo snap.
               _______________________________________________________________________________
               O script aceita somente arquivos do tipo ASCII text, não é preciso extensão
            "
            exit 0
}
if [ $1 == "-h" ] || [ $1 == "--help" ] ;then
 helpprint
fi
version="0.1.1"
if [ $1 == "-v" ] || [ $1 == "--version" ] ;  then
echo "versão $version"
exit 0
fi
arquivo=`echo $*`
tmparqapt=aptprogs.txt
tmparqflat=flatprogs.txt
tmparqsnap=snapprogs.txt
arquivo=`echo "${arquivo##* }"`
echo $arquivo
testearq=`file $arquivo`

echo $testearq | cut -d':' -f2 | cut -d' ' -f2-3
testearqresult=$(echo $testearq | cut -d":" -f2 | cut -d" " -f2-3)
echo $testearqresult
read isc

if [  "$testearqresult" != "ASCII text" ] ; then
echo "


        houve algum erro ou arquivo não existe.


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
      for palavra in  $linha
        do
          echo "Instalando $palavra via $2"
          sleep 1
          # faça algo mais interessante aqui...
        done
      # faça algo mais interessante aqui...
    done < "$arquivo_param"
}

#!/bin/bash
#teste_parametro
while [ $# -gt 0 ]; do
    case "$1" in
           -a)
             rodar "$tmparqapt" "apt"
             break
             ;;
           -f)
            rodar "$tmparqflat" "Flatpack"
            break
           ;;
           -s)
            rodar "$tmparqsnap" "Snap"
            break

           ;;
           --all)
            rodar "$tmparqapt" "apt"
            rodar "$tmparqflat" "Flatpack"
            rodar "$tmparqsnap" "Snap"
            break
           ;;
        *)
            echo "$0: Este parâmetro '$1' não foi reconhecido, saindo... proximo é $2"
            exit 1
            ;;
    esac
    shift
done
