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


####################################################################################
############ importando Biblioteca de cores
####################################################################################

source ./bash_colors_lib.sh

####################################################################################
############ Funçao de ajuda e versao do script
####################################################################################

helpprint (){

    echo -e "
    ${b_blue_bw}Dio${b_black_bw}PSI${b_white_bd}   Sintaxe
    ${white_bd}comando  ${b_yellow_bd}[${green_bd}flag${b_yellow_bd}]  ${white_bd}arquivo
    ${b_blue_bw}Flags${blue_bd}--------------------------------------------------------------------------
    ${green_bd}--all      ${green_bd} Instala utilizando todos os metodos disponíveis (apt,flatpack,snap)
    ${green_bd}-a         ${blue_bd} Instala os programas utilizando gerenciador de pacotes apt.
    ${green_bd}-f         ${ciano_bd} Instala os programas utilizando gerenciador de pacotes flatpack.
    ${green_bd}-s         ${red_bd} Instala os programas utilizando gerenciador de pacotes snap.
    ${green_bd}-p         ${yellow_bd} Instala os programas utilizando gerenciador de pacotes pacman.
    _______________________________________________________________________________
    ${white_bd}O script aceita somente arquivos do tipo ASCII text, não é preciso extensão
    "
    exit 0
}
version="0.2.01"
    if [[ "$1" = "-h"  ||  $1 = "--help" ]] ;then helpprint ; fi

    if [[ "$1" = "-v"  ||  $1 = "--version" ]] ; then
        echo -e "${b_blue_bw}Dio${b_black_bw}PSI${b_white_bd} versão $version" ;exit 0 ;
    fi
####################################################################################
############ checando usuario antes de tudo.
####################################################################################
if [ $USER != 'root' ] ; then
echo -e "${f_black_br}error:${red_bd} o script nao pode ser executado, a não ser que seja o root. "
exit 1
fi

####################################################################################
############ aprte do script para tratamente de nomes de arquivos temporários
####################################################################################

arquivo=$(echo $*)
tmparqapt=aptprogs.txt
tmparqflat=flatprogs.txt
tmparqsnap=snapprogs.txt
tmparqpacm=pacmprogs.txt
arquivo=$(echo "${arquivo##* }")
testearq=$(file $arquivo 2>/dev/null)
#echo $testearq | cut -d':' -f2 | cut -d' ' -f2-3
testearqresult=$(echo $testearq | cut -d":" -f2 | cut -d" " -f2-3)
remoteflatpack=$( flatpak remotes | head -n 1 | cut -f1 )

####################################################################################
############ checando se o arquivo existe passado no argumento.
####################################################################################

if [  "$testearqresult" != "ASCII text" ] ; then
echo -e "${magenta_bd}houve algum ${f_red_bd}erro${magenta_bd} ou arquivo não existe."

exit 1
fi

if [ -f $tmparqapt ];then rm -f $tmparqapt ;fi
if [ -f $tmparqflat ];then rm -f $tmparqflat ;fi
if [ -f $tmparqsnap ];then rm -f $tmparqsnap ;fi
if [ -f $tmparqpacm ];then rm -f $tmparqpacm ;fi
#read isc
sed -n '/APT/,/TPA/p' $arquivo > $tmparqapt
sed -n '/FLAT/,/TALF/p' $arquivo > $tmparqflat
sed -n '/SNAP/,/PANS/p' $arquivo > $tmparqsnap
sed -n '/PACM/,/MCAP/p' $arquivo > $tmparqpacm
sed -i 's/APT/ /g' $tmparqapt
sed -i 's/TPA/ /g' $tmparqapt
sed -i 's/FLAT/ /g' $tmparqflat
sed -i 's/TALF/ /g' $tmparqflat
sed -i 's/SNAP/ /g' $tmparqsnap
sed -i 's/PANS/ /g' $tmparqsnap
sed -i 's/PACM/ /g' $tmparqpacm
sed -i 's/MCAP/ /g' $tmparqpacm
sed -i '/^$/d' $tmparqapt
sed -i '/^$/d' $tmparqflat
sed -i '/^$/d' $tmparqsnap
sed -i '/^$/d' $tmparqpacm
####################################################################################
############ funcão motor que executa as instalaçoes dos pacotes
####################################################################################
    
function installpkgs(){
    arquivo_param=$1
    while IFS= read -r linha || [[ -n "$linha" ]]; do

      for pkg in  $linha
        do
            case $2 in
                "Apt") 
                    apt install $pkg -y
                ;;
                "Flatpack")                
                    flatpack install -y $remoteflatpack $pkg
                ;;
                "Snap")
                    resuldinfo=$(snap info  $pkg | grep latest/stable: | grep  classic | wc -l)
                    if [ $resuldinfo  == 0 ] ; then
                        echo -e "${green_bd}Instalando ${b_white_bd}$pkg ${green_bd}via ${b_white_bd}$2${green_bd} aguarde..."
                        snap install $pkg
                    else
                        echo -e "${green_bd}Instalando ${b_white_bd}$pkg ${green_bd}via ${b_white_bd}$2${green_bd} aguarde..."
                        snap install --classic   $pkg
                    fi 
                ;;
                "Pacman")
                echo -e "${green_bd}Instalando ${b_white_bd}$pkg ${green_bd}via ${b_white_bd}$2${green_bd} aguarde..."
                    pacman -Sy --noconfirm $pkg
                ;;
                *) 
                    echo -e "${red_bd}Houve algum erro estrambólico com o codigo de saída ${b_white_bd}$?"
                ;;
            esac
            
            
            sleep 1
        done
    done < "$arquivo_param"
}
####################################################################################
############ tratamento metodo all para revolver possiveis conflitos
####################################################################################
function install_allpkgs(){
if [ ]
}
####################################################################################
############ tratamento de argumentos recebidos pelo comando principal ($0)
####################################################################################
while [ $# -gt 0 ]; do
    case "$1" in
           -a)installpkgs "$tmparqapt" "Apt"; break ;;
           -f)installpkgs "$tmparqflat" "Flatpack"; break ;;
           -s)installpkgs "$tmparqsnap" "Snap"; break ;;
           -p)installpkgs "$tmparqpacm" "Pacman"; break ;;
           --all)
            installpkgs "$tmparqapt" "apt"
            installpkgs "$tmparqflat" "Flatpack"
            installpkgs "$tmparqsnap" "Snap"
            installpkgs "$tmparqpacm" "Pacman"
            break
           ;;
        *)
            echo -e "${white_br}$0:${white_bd} Este parâmetro ${green_bd}'$1'${white_bd} não foi reconhecido, saindo... proximo é \033[00;32;40m$2"
            exit 1
            ;;
    esac
    shift
done


####################################################################################
############
####################################################################################

