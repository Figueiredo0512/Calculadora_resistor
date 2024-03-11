#!/bin/bash

function intro(){
clear
cat /var/estudo/bash/calc.txt
cat /var/estudo/bash/resistor_logo.txt
}

#function calculadora(){x
#}

function menu(){
echo -e ""
echo -e "Selecione a opção que deseja "
echo -e "1 - Calcular"
echo -e "2 - Tabela de cores"
echo -e "3 - Sair"
read opc_menu

if [ $opc_menu = 1 ]; then
	echo -e "opc1"
elif [ $opc_menu = 2 ]; then
	clear
        cat /var/estudo/bash/tabela_cores.txt
	echo -e ""
	menu
else
	echo -e "Obrigado por utilizar a calculadora de resistores, até logo."
	echo -e ""
	exit
fi
}



###############################################



intro
menu
