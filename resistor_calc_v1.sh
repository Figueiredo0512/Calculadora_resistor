#!/bin/bash

function intro(){
clear
cat /var/estudo/bash/calc.txt
cat /var/estudo/bash/resistor_logo.txt
}

#function calculadora(){x
#}

function color_table(){

echo -e "COR		1 Faixa		2 Faixa 	Faixa Multiplicadora		Tolerância"
	
echo -e "Preto		0		0		x1				-"

echo -e "\033[0;33mMarrom		1		1		x10				+-1%\033[0m"

echo -e "\033[0;31mVermelho	2		2		x100				+-2%\033[0m"

echo -e "Laranja		3		3		x1k				-"

echo -e "\e[1;33mAmarelo		4		4		x10k				-\033[0m"

echo -e "\e[1;32mVerde		5		5		x100k				+-0,5%\033[0m"

echo -e "\e[1;34mSzul		6		6		x1M				+-0,025%\e[0m"

echo -e "\033[1;35mVioleta		7		7		x10M				+-0,1%\033[0m"

echo -e "\033[0;37mCinza		8		8		-				+-0,05%\033[0m"

echo -e "Branco\e[1;37m		9		9		-				-\033[0m"

echo -e "Dourado		-		-		x0,10				+-5%"

echo -e "Prateado	-		-		x0,01				+-10%"

echo -e "Sem cor		-		-		-				+-20%"

}


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
        color_table
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
