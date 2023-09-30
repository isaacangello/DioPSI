
##### Introduction
One day while browsing the internet I saw a post from a Vlog called DioLinux by a Linux enthusiast, trying to automate the installation of applications and packages after , in a simple and functional way but very redundant, from a programming point of view it is extremely redundant what he I was doing it, but the idea seemed good to me, so I decided to take advantage and create a more robust solution, and name it in honor of whoever inspired the script.

##### What is DioPSI?
DioPSI is a script written in shell script to speed up the installation of packages after you have recently installed a Linux operating system (Debian based), or ArchLinux (experimental) based system,

##### How it works?
This script parses a simple text file containing a list of programs organized based on the desired package manager, and installs the listed programs.

##### How to use?
Log in as the root user, enter the script folder and give write permission to the `diopsi.sh` file with the command chmod +x diopsi.sh.

##### Command syntax

abstraction | Command  | [flag] | file
------------- | -------------|------------- | -------------
 example   |./diopsi.sh     | -a    | my_packages.txt

##### flags

flag| function
------------- | -------------
 --all   |   Install using all available methods (apt, flatpack, snap)
 -a     |    Install programs using the apt package manager.
 -f     |     Install programs using the flatpack package manager.
 -s     |     Install programs using the flatpack package manager.
 -p     |     Install programs using the Pacman package manager.
 -h ou --help |     Display help
 -v ou --version |  Displays the script version.

##### create list of packages a to install

The script only accepts ASCII text files, no extension is needed. This file must be organized as follows:

- Packages that will use the `apt` package manager must be written in lowercase and be between the words APT...PTA, separated by space.

Example of apt package manager

    APT  gimp   krita:i386 mc kdenetwork kdenetwork-filesharing Notepadqq  TPA
    ou
    APT
        gimp   krita:i386 mc kdenetwork kdenetwork-filesharing Notepadqq
    TPA

- Packages that will use the `Flatpack` package manager must be written in lowercase letters and be between the words FLAT...TALF, separated by space.

Example of Flatpack package manager

    FLAT  org.DolphinEmu.dolphin-emu com.google.Chrome  TALF
    ou
    FLAT
        org.DolphinEmu.dolphin-emu com.google.Chrome
    TALF

- Packages that will use the `snap` package manager must be written in lowercase and be between the words SNAP...PANS, separated by space.

Example of snap package manager

    SNAP  kate supertuxkart sublime-text vlc  PANS
    ou
    SNAP
        kate supertuxkart sublime-text vlc
    PANS

- Packages that will use the `Pacman` package manager must be written in lowercase and be between the words SNAP...PANS, separated by space.

Example of Pacman package manager

    PACM  kate supertuxkart sublime-text vlc  MCAP
    ou
    PACM
        kate supertuxkart sublime-text vlc
    MCAP



#DioPSI
##### Introdução
   Um dia rodando pela internet vi um post de um Vlog chamado DioLinux  de um estusiasta de Linux, tentando automatizar a instalação dos softwares empacoados após , de forma simples e funcional mas muito redundante, do ponto de vista da programação é estremamente redundante o que ele estava fazendo, mas a ideia me parecia boa, por isso resolvi aproveitar e criar uma solução mais robusta, e batizer em homenagem a quem inspirou o script.

##### o que é o DioPSI ?
   O DioPSI é um script escrito em shell script para acelerar a instalação de Pacotes após você ter recem instalado um sistema operacional Linux (Debian based)ou sistema baseado ArchLinux (experimental).

##### Como funciona?

   Esse script analisa um arquivo de texto simples contendo uma lista de pacotes organizada tendo como base o gerenciador de pacotes desejado,  e executa a instalação dos programas listados.

##### Como usar?

   Loge como usuário root, entre na pasta do script e dê prermissão de escrita para o arquivo `diopsi.sh` com o comando chmod +x diopsi.sh.     

##### Sintaxe do comando

abstração | comando  | [flag] | arquivo   
------------- | -------------|------------- | -------------
 exemplo   |./diopsi.sh     | -a    | my_packages.txt

##### flags

flag| função
------------- | -------------
 --all   |   Instala utilizando todos os metodos disponíveis (apt,flatpack,snap)
 -a     |     Instala os programas utilizando gerenciador de pacotes apt.
 -f     |     Instala os programas utilizando gerenciador de pacotes flatpack.
 -s     |      Instala os programas utilizando gerenciador de pacotes snap.
 -p     |      Instala os programas utilizando gerenciador de pacotes Pacman.
 -h ou --help |     Exibe ajuda.              
 -v ou --version |  exibe a versão do script.

##### montando a lista de programas 

O script aceita somente arquivos do tipo ASCII text, não é preciso extensão. esse arquivo deve ser organizado da seguinte forma:

- Pacotes que vão utilizar gerenciador de pacotes `apt` devem ser escritos em lowercase e estar entre as palavras APT...PTA, divididas por espaço.

Exemplo apt

    APT  gimp   krita:i386 mc kdenetwork kdenetwork-filesharing Notepadqq  TPA
    ou 
    APT
        gimp   krita:i386 mc kdenetwork kdenetwork-filesharing Notepadqq
    TPA

- Pacotes que vão utilizar gerenciador de pacotes `Flatpack` devem ser escritos em lowercase e estar entre as palavras FLAT...TALF, divididas por espaço.

Exemplo Flatpack

    FLAT  org.DolphinEmu.dolphin-emu com.google.Chrome  TALF
    ou 
    FLAT
        org.DolphinEmu.dolphin-emu com.google.Chrome
    TALF

- Pacotes que vão utilizar gerenciador de pacotes `snap` devem ser escritos em lowercase e estar entre as palavras SNAP...PANS, divididas por espaço.

Exemplo snap

    SNAP  kate supertuxkart sublime-text vlc  PANS
    ou 
    SNAP
        kate supertuxkart sublime-text vlc
    PANS

- Pacotes que vão utilizar gerenciador de pacotes `Pacman` devem ser escritos em lowercase e estar entre as palavras SNAP...PANS, divididas por espaço.

Exemplo Pacman

    PACM  kate supertuxkart sublime-text vlc  MCAP
    ou
    PACM
        kate supertuxkart sublime-text vlc
    MCAP

