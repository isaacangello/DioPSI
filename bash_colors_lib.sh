#!bin/bash

####################################################################################
############ Biblioteca de cores
############ configurando leitura amigavel para cores do console
####################################################################################

####################################################################################
############ session background without style
####################################################################################
############ black background without style sufix _bd (dark)
black_bd="\033[00;30;40m"
red_bd="\033[00;31;40m"
green_bd="\033[00;32;40m"
yellow_bd="\033[00;33;40m"
blue_bd="\033[00;34;40m"
magenta_bd="\033[00;35;40m"
ciano_bd="\033[00;36;40m"
white_bd="\033[00;37;40m"
balck_bd="\033[00;37;40m"

############ red background without style sufix _br
black_br="\033[00;30;41m"
red_br="\033[00;31;41m"
green_br="\033[00;32;41m"
yellow_br="\033[00;33;41m"
blue_br="\033[00;34;41m"
magenta_br="\033[00;35;41m"
ciano_br="\033[00;36;41m"
white_br="\033[00;37;41m"

############ green background without style sufix _bg
black_bg="\033[00;30;42m"
red_bg="\033[00;31;42m"
green_bg="\033[00;32;42m"
yellow_bg="\033[00;33;42m"
blue_bg="\033[00;34;42m"
magenta_bg="\033[00;35;42m"
ciano_bg="\033[00;36;42m"
white_bg="\033[00;37;42m"

############ yellow background without style sufix _by
black_by="\033[00;30;43m"
red_by="\033[00;31;43m"
green_by="\033[00;32;43m"
yellow_by="\033[00;33;43m"
blue_by="\033[00;34;43m"
magenta_by="\033[00;35;43m"
ciano_by="\033[00;36;43m"
white_by="\033[00;37;43m"

############ blue background without style sufix _bb
black_bb="\033[00;30;44m"
red_bb="\033[00;31;44m"
green_bb="\033[00;32;44m"
yellow_bb="\033[00;33;44m"
blue_bb="\033[00;34;44m"
magenta_bb="\033[00;35;44m"
ciano_bb="\033[00;36;44m"
white_bb="\033[00;37;44m"

############ magenta background without style sufix _bm
black_bm="\033[00;30;45m"
red_bm="\033[00;31;45m"
green_bm="\033[00;32;45m"
yellow_bm="\033[00;33;45m"
blue_bm="\033[00;34;45m"
magenta_bm="\033[00;35;45m"
ciano_bm="\033[00;36;45m"
white_bm="\033[00;37;45m"

############ ciano background without style sufix _bc
black_bc="\033[00;30;46m"
red_bc="\033[00;31;46m"
green_bc="\033[00;32;46m"
yellow_bc="\033[00;33;46m"
blue_bc="\033[00;34;46m"
magenta_bc="\033[00;35;46m"
ciano_bc="\033[00;36;46m"
white_bc="\033[00;37;46m"

############ white background without style sufix _bw
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
############ black background style bold sufix _bd
b_black_bd="\033[01;30;40m"
b_red_bd="\033[01;31;40m"
b_green_bd="\033[01;32;40m"
b_yellow_bd="\033[01;33;40m"
b_blue_bd="\033[01;34;40m"
b_magenta_bd="\033[01;35;40m"
b_ciano_bd="\033[01;36;40m"
b_white_bd="\033[01;37;40m"
b_balck_bd="\033[01;37;40m"

############ red background style bold sufix _br
b_black_br="\033[01;30;41m"
b_red_br="\033[01;31;41m"
b_green_br="\033[01;32;41m"
b_yellow_br="\033[01;33;41m"
b_blue_br="\033[01;34;41m"
b_magenta_br="\033[01;35;41m"
b_ciano_br="\033[01;36;41m"
b_white_br="\033[01;37;41m"

############ green background style bold sufix _bg
b_black_bg="\033[01;30;42m"
b_red_bg="\033[01;31;42m"
b_green_bg="\033[01;32;42m"
b_yellow_bg="\033[01;33;42m"
b_blue_bg="\033[01;34;42m"
b_magenta_bg="\033[01;35;42m"
b_ciano_bg="\033[01;36;42m"
b_white_bg="\033[01;37;42m"

############ yellow background style bold sufix _by
b_black_by="\033[01;30;43m"
b_red_by="\033[01;31;43m"
b_green_by="\033[01;32;43m"
b_yellow_by="\033[01;33;43m"
b_blue_by="\033[01;34;43m"
b_magenta_by="\033[01;35;43m"
b_ciano_by="\033[01;36;43m"
b_white_by="\033[01;37;43m"

############ blue background style bold sufix _bb
b_black_bb="\033[01;30;44m"
b_red_bb="\033[01;31;44m"
b_green_bb="\033[01;32;44m"
b_yellow_bb="\033[01;33;44m"
b_blue_bb="\033[01;34;44m"
b_magenta_bb="\033[01;35;44m"
b_ciano_bb="\033[01;36;44m"
b_white_bb="\033[01;37;44m"

############ magenta background style bold sufix _bm
b_black_bm="\033[01;30;45m"
b_red_bm="\033[01;31;45m"
b_green_bm="\033[01;32;45m"
b_yellow_bm="\033[01;33;45m"
b_blue_bm="\033[01;34;45m"
b_magenta_bm="\033[01;35;45m"
b_ciano_bm="\033[01;36;45m"
b_white_bm="\033[01;37;45m"

############ ciano background style bold sufix _bc
b_black_bc="\033[01;30;46m"
b_red_bc="\033[01;31;46m"
b_green_bc="\033[01;32;46m"
b_yellow_bc="\033[01;33;46m"
b_blue_bc="\033[01;34;46m"
b_magenta_bc="\033[01;35;46m"
b_ciano_bc="\033[01;36;46m"
b_white_bc="\033[01;37;46m"

############ white background style bold sufix _bw
b_black_bw="\033[01;30;47m"
b_red_bw="\033[01;31;47m"
b_green_bw="\033[01;32;47m"
b_yellow_bw="\033[01;33;47m"
b_blue_bw="\033[01;34;47m"
b_magenta_bw="\033[01;35;47m"
b_ciano_bw="\033[01;36;47m"
b_white_bw="\033[01;37;47m"

####################################################################################
############ session background style underline prefix u_
####################################################################################
############ black background style underline sufix _bd
u_black_bd="\033[04;30;40m"
u_red_bd="\033[04;31;40m"
u_green_bd="\033[04;32;40m"
u_yellow_bd="\033[04;33;40m"
u_blue_bd="\033[04;34;40m"
u_magenta_bd="\033[04;35;40m"
u_ciano_bd="\033[04;36;40m"
u_white_bd="\033[04;37;40m"
u_balck_bd="\033[04;37;40m"

############ red background style underline sufix _br
u_black_br="\033[04;30;41m"
u_red_br="\033[04;31;41m"
u_green_br="\033[04;32;41m"
u_yellow_br="\033[04;33;41m"
u_blue_br="\033[04;34;41m"
u_magenta_br="\033[04;35;41m"
u_ciano_br="\033[04;36;41m"
u_white_br="\033[04;37;41m"

############ green background style underline sufix _bg
u_black_bg="\033[04;30;42m"
u_red_bg="\033[04;31;42m"
u_green_bg="\033[04;32;42m"
u_yellow_bg="\033[04;33;42m"
u_blue_bg="\033[04;34;42m"
u_magenta_bg="\033[04;35;42m"
u_ciano_bg="\033[04;36;42m"
u_white_bg="\033[04;37;42m"

############ yellow background style underline sufix _by
u_black_by="\033[04;30;43m"
u_red_by="\033[04;31;43m"
u_green_by="\033[04;32;43m"
u_yellow_by="\033[04;33;43m"
u_blue_by="\033[04;34;43m"
u_magenta_by="\033[04;35;43m"
u_ciano_by="\033[04;36;43m"
u_white_by="\033[04;37;43m"

############ blue background style underline sufix _bb
u_black_bb="\033[04;30;44m"
u_red_bb="\033[04;31;44m"
u_green_bb="\033[04;32;44m"
u_yellow_bb="\033[04;33;44m"
u_blue_bb="\033[04;34;44m"
u_magenta_bb="\033[04;35;44m"
u_ciano_bb="\033[04;36;44m"
u_white_bb="\033[04;37;44m"

############ magenta background style underline sufix _bm
u_black_bm="\033[04;30;45m"
u_red_bm="\033[04;31;45m"
u_green_bm="\033[04;32;45m"
u_yellow_bm="\033[04;33;45m"
u_blue_bm="\033[04;34;45m"
u_magenta_bm="\033[04;35;45m"
u_ciano_bm="\033[04;36;45m"
u_white_bm="\033[04;37;45m"

############ magenta background style underline sufix _bc
u_black_bc="\033[04;30;46m"
u_red_bc="\033[04;31;46m"
u_green_bc="\033[04;32;46m"
u_yellow_bc="\033[04;33;46m"
u_blue_bc="\033[04;34;46m"
u_magenta_bc="\033[04;35;46m"
u_ciano_bc="\033[04;36;46m"
u_white_bc="\033[04;37;46m"

############ white background style underline sufix _bw
u_black_bw="\033[04;30;47m"
u_red_bw="\033[04;31;47m"
u_green_bw="\033[04;32;47m"
u_yellow_bw="\033[04;33;47m"
u_blue_bw="\033[04;34;47m"
u_magenta_bw="\033[04;35;47m"
u_ciano_bw="\033[04;36;47m"
u_white_bw="\033[04;37;47m"

####################################################################################
############ session background style flashing prefix f_
####################################################################################
############ black background style flashing sufix _bd
f_black_bd="\033[05;30;40m"
f_red_bd="\033[05;31;40m"
f_green_bd="\033[05;32;40m"
f_yellow_bd="\033[05;33;40m"
f_blue_bd="\033[05;34;40m"
f_magenta_bd="\033[05;35;40m"
f_ciano_bd="\033[05;36;40m"
f_white_bd="\033[05;37;40m"
f_balck_bd="\033[05;37;40m"

############ red background style flashing sufix _br
f_black_br="\033[05;30;41m"
f_red_br="\033[05;31;41m"
f_green_br="\033[05;32;41m"
f_yellow_br="\033[05;33;41m"
f_blue_br="\033[05;34;41m"
f_magenta_br="\033[05;35;41m"
f_ciano_br="\033[05;36;41m"
f_white_br="\033[05;37;41m"

############ green background style flashing sufix _bg
f_black_bg="\033[05;30;42m"
f_red_bg="\033[05;31;42m"
f_green_bg="\033[05;32;42m"
f_yellow_bg="\033[05;33;42m"
f_blue_bg="\033[05;34;42m"
f_magenta_bg="\033[05;35;42m"
f_ciano_bg="\033[05;36;42m"
f_white_bg="\033[05;37;42m"

############ yellow background style flashing sufix _by
f_black_by="\033[05;30;43m"
f_red_by="\033[05;31;43m"
f_green_by="\033[05;32;43m"
f_yellow_by="\033[05;33;43m"
f_blue_by="\033[05;34;43m"
f_magenta_by="\033[05;35;43m"
f_ciano_by="\033[05;36;43m"
f_white_by="\033[05;37;43m"

############ blue background style flashing sufix _bb
f_black_bb="\033[05;30;44m"
f_red_bb="\033[05;31;44m"
f_green_bb="\033[05;32;44m"
f_yellow_bb="\033[05;33;44m"
f_blue_bb="\033[05;34;44m"
f_magenta_bb="\033[05;35;44m"
f_ciano_bb="\033[05;36;44m"
f_white_bb="\033[05;37;44m"

############ magenta background style flashing sufix _bm
f_black_bm="\033[05;30;45m"
f_red_bm="\033[05;31;45m"
f_green_bm="\033[05;32;45m"
f_yellow_bm="\033[05;33;45m"
f_blue_bm="\033[05;34;45m"
f_magenta_bm="\033[05;35;45m"
f_ciano_bm="\033[05;36;45m"
f_white_bm="\033[05;37;45m"

############ magenta background style flashing sufix _bc
f_black_bc="\033[05;30;46m"
f_red_bc="\033[05;31;46m"
f_green_bc="\033[05;32;46m"
f_yellow_bc="\033[05;33;46m"
f_blue_bc="\033[05;34;46m"
f_magenta_bc="\033[05;35;46m"
f_ciano_bc="\033[05;36;46m"
f_white_bc="\033[05;37;46m"

############ white background style flashing sufix _bw
f_black_bw="\033[05;30;47m"
f_red_bw="\033[05;31;47m"
f_green_bw="\033[05;32;47m"
f_yellow_bw="\033[05;33;47m"
f_blue_bw="\033[05;34;47m"
f_magenta_bw="\033[05;35;47m"
f_ciano_bw="\033[05;36;47m"
f_white_bw="\033[05;37;47m"


####################################################################################
############ session background style reverse prefix f_
####################################################################################
############ black background style reverse sufix _bd
r_black_bd="\033[07;30;40m"
r_red_bd="\033[07;31;40m"
r_green_bd="\033[07;32;40m"
r_yellow_bd="\033[07;33;40m"
r_blue_bd="\033[07;34;40m"
r_magenta_bd="\033[07;35;40m"
r_ciano_bd="\033[07;36;40m"
r_white_bd="\033[07;37;40m"
r_balck_bd="\033[07;37;40m"

############ red background style reverse sufix _br
r_black_br="\033[07;30;41m"
r_red_br="\033[07;31;41m"
r_green_br="\033[07;32;41m"
r_yellow_br="\033[07;33;41m"
r_blue_br="\033[07;34;41m"
r_magenta_br="\033[07;35;41m"
r_ciano_br="\033[07;36;41m"
r_white_br="\033[07;37;41m"

############ green background style reverse sufix _bg
r_black_bg="\033[07;30;42m"
r_red_bg="\033[07;31;42m"
r_green_bg="\033[07;32;42m"
r_yellow_bg="\033[07;33;42m"
r_blue_bg="\033[07;34;42m"
r_magenta_bg="\033[07;35;42m"
r_ciano_bg="\033[07;36;42m"
r_white_bg="\033[07;37;42m"

############ yellow background style reverse sufix _by
r_black_by="\033[07;30;43m"
r_red_by="\033[07;31;43m"
r_green_by="\033[07;32;43m"
r_yellow_by="\033[07;33;43m"
r_blue_by="\033[07;34;43m"
r_magenta_by="\033[07;35;43m"
r_ciano_by="\033[07;36;43m"
r_white_by="\033[07;37;43m"

############ blue background style reverse sufix _bb
r_black_bb="\033[07;30;44m"
r_red_bb="\033[07;31;44m"
r_green_bb="\033[07;32;44m"
r_yellow_bb="\033[07;33;44m"
r_blue_bb="\033[07;34;44m"
r_magenta_bb="\033[07;35;44m"
r_ciano_bb="\033[07;36;44m"
r_white_bb="\033[07;37;44m"

############ magenta background style reverse sufix _bm
r_black_bm="\033[07;30;45m"
r_red_bm="\033[07;31;45m"
r_green_bm="\033[07;32;45m"
r_yellow_bm="\033[07;33;45m"
r_blue_bm="\033[07;34;45m"
r_magenta_bm="\033[07;35;45m"
r_ciano_bm="\033[07;36;45m"
r_white_bm="\033[07;37;45m"

############ magenta background style reverse sufix _bc
r_black_bc="\033[07;30;46m"
r_red_bc="\033[07;31;46m"
r_green_bc="\033[07;32;46m"
r_yellow_bc="\033[07;33;46m"
r_blue_bc="\033[07;34;46m"
r_magenta_bc="\033[07;35;46m"
r_ciano_bc="\033[07;36;46m"
r_white_bc="\033[07;37;46m"

############ white background style reverse sufix _bw
r_black_bw="\033[07;30;47m"
r_red_bw="\033[07;31;47m"
r_green_bw="\033[07;32;47m"
r_yellow_bw="\033[07;33;47m"
r_blue_bw="\033[07;34;47m"
r_magenta_bw="\033[07;35;47m"
r_ciano_bw="\033[07;36;47m"
r_white_bw="\033[07;37;47m"


####################################################################################
# ESTILOS
#
# 00: Nenhum                none
# 01: Negrito               b_
# 04: Sublinhado            u_
# 05: Piscante              f_
# 07: Reverso               r_
# 08: Oculto                h_
#####################################################################################
# CORES DE TEXTO
#
# 30: Preto                 black
# 31: Vermelho              red
# 32: Verde                 green
# 33: Amarelo               yellow
# 34: Azul                  blue
# 35: Magenta (Rosa)        magenta
# 36: Ciano (Azul Ciano)    ciano
# 37: Branco                white
#####################################################################################
# CORES DE FUNDO
#
# 40: Preto                 _bd (dark)
# 41: Vermelho              _br
# 42: Verde                 _bg
# 43: Amarelo               _by
# 44: Azul                  _bb
# 45: Magenta (Rosa)        _bm
# 46: Ciano (Azul Ciano)    _bc
# 47: Branco                _bw

# references
# https://aurelio.net/shell/canivete/#cores
# https://unix.stackexchange.com/questions/694075/display-a-message-in-color-by-a-conventional-color-name-such-as-red-green-blue
# https://www.vivaolinux.com.br/artigo/Formatando-o-bash-com-cores-e-efeitoss

