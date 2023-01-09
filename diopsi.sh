#!/bin/bash
########################################################################
# script DioPSI
#Essa  é  uma   reconstrução   do  script  inicial  DioPSI.
#Esse  script  tem  como   objetivo automatizar a reinstalação
#de programas após a instalção do sistema operacional (linux).
#Esse script foi inspirado no post do Dio Linux.
########################################################################

############ Para evitar alguns erros essa sessão contém informaçoes de ajuda
############ e contém informações sobre a versão do script.

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
version="0.1.1"
    if [ $1 == "-h" ] || [ $1 == "--help" ] ;then helpprint ; fi

    if [ $1 == "-v" ] || [ $1 == "--version" ] ;  then echo "versão $version" ; fi

####################################################################################
############ aprte do script para tratamente de nomes de arquivos temorários
####################################################################################

arquivo=`echo $*`
tmparqapt=aptprogs.txt
tmparqflat=flatprogs.txt
tmparqsnap=snapprogs.txt
arquivo=`echo "${arquivo##* }"`
testearq=`file $arquivo`
echo $testearq | cut -d':' -f2 | cut -d' ' -f2-3
testearqresult=$(echo $testearq | cut -d":" -f2 | cut -d" " -f2-3)

####################################################################################
############ checando se o arquivo existe passado no argumento.
####################################################################################

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

####################################################################################
############ funcão motor que executa as instalaçoes dos pacotes
####################################################################################

function installpkgs(){
    arquivo_param=$1
    while IFS= read -r linha || [[ -n "$linha" ]]; do

      for palavra in  $linha
        do
          echo "Instalando $palavra via $2"
          sleep 1
        done
    done < "$arquivo_param"
}
####################################################################################
############ tratamento de argumentos recebidos pelo comando principal ($0)
####################################################################################
while [ $# -gt 0 ]; do
    case "$1" in
           -a)
             installpkgs "$tmparqapt" "apt"
             break
             ;;
           -f)
            installpkgs "$tmparqflat" "Flatpack"
            break
           ;;
           -s)
            installpkgs "$tmparqsnap" "Snap"
            break

           ;;
           --all)
            installpkgs "$tmparqapt" "apt"
            installpkgs "$tmparqflat" "Flatpack"
            installpkgs "$tmparqsnap" "Snap"
            break
           ;;
        *)
            echo "$0: Este parâmetro '$1' não foi reconhecido, saindo... proximo é $2"
            exit 1
            ;;
    esac
    shift
done


####################################################################################
############
####################################################################################

