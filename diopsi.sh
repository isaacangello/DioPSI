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


# ESTILOS
#
# 00: Nenhum
# 01: Negrito
# 04: Sublinhado
# 05: Piscante
# 07: Reverso
# 08: Oculto
#
# CORES DE TEXTO
#
# 30: Preto
# 31: Vermelho
# 32: Verde
# 33: Amarelo
# 34: Azul
# 35: Magenta (Rosa)
# 36: Ciano (Azul Ciano)
# 37: Branco
#
# CORES DE FUNDO
#
# 40: Preto
# 41: Vermelho
# 42: Verde
# 43: Amarelo
# 44: Azul
# 45: Magenta (Rosa)
# 46: Ciano (Azul Ciano)
# 47: Branco


helpprint (){

    echo -e "
    \033[01;47;34mDio\033[01;30;47mPSI\033[00;47;40m   Sintaxe
    \033[00;44;40mcomando  \033[00;33;40m[\033[00;32;40mflag\033[00;33;40m]  \033[00;44;40marquivo
    \033[00;34;47mFlags\033[00;34;40m--------------------------------------------------------------------------
    \033[00;32;40m--all       \033[00;32;40mInstala utilizando todos os metodos disponíveis (apt,flatpack,snap)
    \033[00;32;40m-a          \033[00;34;40mInstala os programas utilizando gerenciador de pacptes apt.
    \033[00;32;40m-f          \033[00;36;40mInstala os programas utilizando gerenciador de pacptes flatpack.
    \033[00;32;40m-s          \033[00;33;40mInstala os programas utilizando gerenciador de pacptes snap.
    \033[00;32;40m-p          \033[00;33;40mInstala os programas utilizando gerenciador de pacptes pacman.
    _______________________________________________________________________________
    \033[00;00;40mO script aceita somente arquivos do tipo ASCII text, não é preciso extensão
    "
    exit 0
}
version="0.1.15"
    if [[ "$1" = "-h"  ||  $1 = "--help" ]] ;then helpprint ; fi

    if [[ "$1" = "-v"  ||  $1 = "--version" ]] ; then
        echo -e "\033[01;47;34mDio\033[01;30;47mPSI\033[00;47;40m\033[00;00;40m versão $version" ;exit 0 ;
    fi

####################################################################################
############ aprte do script para tratamente de nomes de arquivos temorários
####################################################################################

arquivo=$(echo $*)
tmparqapt=aptprogs.txt
tmparqflat=flatprogs.txt
tmparqsnap=snapprogs.txt
tmparqpacm=pacmprogs.txt
arquivo=$(echo "${arquivo##* }")
testearq=$(file $arquivo)
#echo $testearq | cut -d':' -f2 | cut -d' ' -f2-3
testearqresult=$(echo $testearq | cut -d":" -f2 | cut -d" " -f2-3)
remoteflatpack=$( flatpak remotes | head -n 1 | cut -f1 )

####################################################################################
############ checando se o arquivo existe passado no argumento.
####################################################################################
if [ $USER != 'root' ] ; then
echo -e "\033[00;30;41merro:\033[00;31;40m o script nao pode ser executado, a não ser que seja o root. "
exit 1
fi
if [  "$testearqresult" != "ASCII text" ] ; then
echo -e "\033[00;35;40mhouve algum \033[05;31;40merro\033[00;35;40m ou arquivo não existe."

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
                        echo "Instalando $pkg via $2 aguarde..."
                        snap install $pkg
                    else
                        echo "Instalando $pkg via $2 aguarde..."
                        snap install --classic   $pkg
                    fi 
                ;;
                "Pacman")
                    pacman -Sy --noconfirm $pkg
                ;;
                *) 
                    echo "\033[00;35;40mHouve algum erro estrambólico com o codigo de saída $?"
                ;;
            esac
            
            
            sleep 1
        done
    done < "$arquivo_param"
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
            echo -e "\033[00;33;40m$0:\033[00;37;40m Este parâmetro \033[00;32;40m'$1'\033[00;37;40m não foi reconhecido, saindo... proximo é \033[00;32;40m$2"
            exit 1
            ;;
    esac
    shift
done


####################################################################################
############
####################################################################################

