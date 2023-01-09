#!/bin/bash
#teste_parametro
ultimo_arg=\$
ultimo_arg=$ultimo_arg`echo $#`
echo $ultimo_arg
#read

#exit 0

while [ $# -gt 0 ]; do
    case "$1" in

        version | -v)
           echo "$version"
           ;;
        help | -h)
            echo "
                --all       Instala utilizando todos os metodos disponíveis (apt,flatpack,snap)
                -a          Instala os programas utilizando metodo apt.
                -f          Instala os programas utilizando metodo flatpack.
                -s          Instala os programas utilizando metodo snap.
            "
           ;;
           -a)
           ;;
           -f)
            echo "flatpack ainda não foi codificado."
            exit 0
           ;;
           -s)
            echo "snap ainda não foi codificado."
            exit 0

           ;;
            --all)
            echo "ALL ainda não foi codificado."
            exit 0
           ;;
*)
            echo "$0: Este parâmetro '$1' não foi reconhecido, saindo... proximo é $2";
            exit 1
            ;;
    esac
    shift
done
