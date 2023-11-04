#!bin/bash

####################################################################################
############ Biblioteca de cores
############ configurando leitura amigavel para cores do console
####################################################################################

####################################################################################
############ session background without style
####################################################################################
############ black background without style
black_bd="\033[00;30;40m"
red_bd="\033[00;31;40m"
green_bd="\033[00;32;40m"
yellow_bd="\033[00;33;40m"
blue_bd="\033[00;34;40m"
magenta_bd="\033[00;35;40m"
ciano_bd="\033[00;36;40m"
white_bd="\033[00;37;40m"
balck_bd="\033[00;37;40m"

############ red background without style
black_br="\033[00;30;41m"
red_br="\033[00;31;41m"
green_br="\033[00;32;41m"
yellow_br="\033[00;33;41m"
blue_br="\033[00;34;41m"
magenta_br="\033[00;35;41m"
ciano_br="\033[00;36;41m"
white_br="\033[00;37;41m"

############ green background without style
black_bg="\033[00;30;42m"
red_bg="\033[00;31;42m"
green_bg="\033[00;32;42m"
yellow_bg="\033[00;33;42m"
blue_bg="\033[00;34;42m"
magenta_bg="\033[00;35;42m"
ciano_bg="\033[00;36;42m"
white_bg="\033[00;37;42m"

############ yellow background without style
black_by="\033[00;30;43m"
red_by="\033[00;31;43m"
green_by="\033[00;32;43m"
yellow_by="\033[00;33;43m"
blue_by="\033[00;34;43m"
magenta_by="\033[00;35;43m"
ciano_by="\033[00;36;43m"
white_by="\033[00;37;43m"

############ blue background without style
black_bb="\033[00;30;44m"
red_bb="\033[00;31;44m"
green_bb="\033[00;32;44m"
yellow_bb="\033[00;33;44m"
blue_bb="\033[00;34;44m"
magenta_bb="\033[00;35;44m"
ciano_bb="\033[00;36;44m"
white_bb="\033[00;37;44m"

############ magenta background without style
black_bm="\033[00;30;45m"
red_bm="\033[00;31;45m"
green_bm="\033[00;32;45m"
yellow_bm="\033[00;33;45m"
blue_bm="\033[00;34;45m"
magenta_bm="\033[00;35;45m"
ciano_bm="\033[00;36;45m"
white_bm="\033[00;37;45m"

############ magenta background without style
black_b="\033[00;30;46m"
red_bm="\033[00;31;46m"
green_bm="\033[00;32;46m"
yellow_bm="\033[00;33;46m"
blue_bm="\033[00;34;46m"
magenta_bm="\033[00;35;46m"
ciano_bm="\033[00;36;46m"
white_bm="\033[00;37;46m"

############ white background without style
black_bw="\033[00;30;47m"
red_bw="\033[00;31;47m"
green_bw="\033[00;32;47m"
yellow_bw="\033[00;33;47m"
blue_bw="\033[00;34;47m"
magenta_bw="\033[00;35;47m"
ciano_bw="\033[00;36;47m"
white_bw="\033[00;37;47m"

####################################################################################
############ session background style bold prefix b_
####################################################################################
############ black background style bold
b_black_bd="\033[01;30;40m"
b_red_bd="\033[01;31;40m"
b_green_bd="\033[01;32;40m"
b_yellow_bd="\033[01;33;40m"
b_blue_bd="\033[01;34;40m"
b_magenta_bd="\033[01;35;40m"
b_ciano_bd="\033[01;36;40m"
b_white_bd="\033[01;37;40m"
b_balck_bd="\033[01;37;40m"

############ red background style bold
b_black_br="\033[01;30;41m"
b_red_br="\033[01;31;41m"
b_green_br="\033[01;32;41m"
b_yellow_br="\033[01;33;41m"
b_blue_br="\033[01;34;41m"
b_magenta_br="\033[01;35;41m"
b_ciano_br="\033[01;36;41m"
b_white_br="\033[01;37;41m"

############ green background style bold
b_black_bg="\033[01;30;42m"
b_red_bg="\033[01;31;42m"
b_green_bg="\033[01;32;42m"
b_yellow_bg="\033[01;33;42m"
b_blue_bg="\033[01;34;42m"
b_magenta_bg="\033[01;35;42m"
b_ciano_bg="\033[01;36;42m"
b_white_bg="\033[01;37;42m"

############ yellow background style bold
b_black_by="\033[01;30;43m"
b_red_by="\033[01;31;43m"
b_green_by="\033[01;32;43m"
b_yellow_by="\033[01;33;43m"
b_blue_by="\033[01;34;43m"
b_magenta_by="\033[01;35;43m"
b_ciano_by="\033[01;36;43m"
b_white_by="\033[01;37;43m"

############ blue background style bold
b_black_bb="\033[01;30;44m"
b_red_bb="\033[01;31;44m"
b_green_bb="\033[01;32;44m"
b_yellow_bb="\033[01;33;44m"
b_blue_bb="\033[01;34;44m"
b_magenta_bb="\033[01;35;44m"
b_ciano_bb="\033[01;36;44m"
b_white_bb="\033[01;37;44m"

############ magenta background style bold
b_black_bm="\033[01;30;45m"
b_red_bm="\033[01;31;45m"
b_green_bm="\033[01;32;45m"
b_yellow_bm="\033[01;33;45m"
b_blue_bm="\033[01;34;45m"
b_magenta_bm="\033[01;35;45m"
b_ciano_bm="\033[01;36;45m"
b_white_bm="\033[01;37;45m"

############ magenta background style bold
b_black_b="\033[01;30;46m"
b_red_bm="\033[01;31;46m"
b_green_bm="\033[01;32;46m"
b_yellow_bm="\033[01;33;46m"
b_blue_bm="\033[01;34;46m"
b_magenta_bm="\033[01;35;46m"
b_ciano_bm="\033[01;36;46m"
b_white_bm="\033[01;37;46m"

############ white background style bold
b_black_bw="\033[01;30;47m"
b_red_bw="\033[01;31;47m"
b_green_bw="\033[01;32;47m"
b_yellow_bw="\033[01;33;47m"
b_blue_bw="\033[01;34;47m"
b_magenta_bw="\033[01;35;47m"
b_ciano_bw="\033[01;36;47m"
b_white_bw="\033[01;37;47m"

####################################################################################
# ESTILOS
#
# 00: Nenhum
# 01: Negrito
# 04: Sublinhado
# 05: Piscante
# 07: Reverso
# 08: Oculto
#####################################################################################
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
#####################################################################################
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

