#DioPSI
##### Introdução
   Um dia rodando pela internet vi um post de um Vlog chamado DioLinux  de um estusiasta de Linux, tentando automatizar a instalação dos programas após , de forma simples e funcional mas muito redundante, do ponto de vista da programação é estremamente redundante o que ele estava fazendo, mas a ideia me parecia boa, por isso resolvi aproveitar e criar uma solução mais robusta, e batizer em homenagem a quem inspirou o script.

##### o que é o DioPSI ?
   O DioPSI é um script escrito em shell script para acelerar a instalação de Programas após você ter recem instalado um sistema operacional Linux (Debian based).

##### Como funciona?

   Esse script analisa um arquivo de texto simples contendo uma lista de programas organizada tendo cmo base os metodo de instalação,  e executa a instalação dos programas listados.     

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
 -s     |      Instala os programas utilizando gerenciador de pacotes snap.
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

