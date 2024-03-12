#!/bin/bash

function intro(){
clear
cat /var/estudo/bash/calc.txt
cat /var/estudo/bash/resistor_logo.txt
}

function calculadora(){
	clear
	cat primeira_cor.txt
	echo -e "\n0 - Preto \n1 - Marrom \n2 - Vermelho \n3 - Laranja \n4 - Amarelo \n5 - Verde \n6 - Azul \n7 - Violeta \n8 - Cinza \n9 - Branco"
	echo -e "\nSelecione a cor da PRIMEIRA faixa"
	read primeira_faixa
        clear
	cat segunda_cor.txt
	echo -e "\n0 - Preto \n1 - Marrom \n2 - Vermelho \n3 - Laranja \n4 - Amarelo \n5 - Verde \n6 - Azul \n7 - Violeta \n8 - Cinza \n9 - Branco"
	echo -e "\nSelecione a cor da SEGUNDA faixa"
        read segunda_faixa
	clear
	cat terceira_cor.txt
	echo -e "\n0 - Preto \n1 - Marrom \n2 - Vermelho \n3 - Laranja \n4 - Amarelo \n5 - Verde \n6 - Azul \n7 - Violeta \n8 - Cinza \n9 - Branco \n10 - Dourado \n11 - Prateado"
	echo -e "\nSelecione a cor da TERCEIRA faixa"
        read terceira_faixa
	clear
	cat quarta_cor.txt
	echo -e "\n0 - Preto \n1 - Marrom \n2 - Vermelho \n3 - Laranja \n4 - Amarelo \n5 - Verde \n6 - Azul \n7 - Violeta \n8 - Cinza \n9 - Branco \n10 - Dourado \n11 - Prateado\n12 - Sem Cor"
	echo -e "\nSelecione a cor da QUARTA faixa"
	read quarta_faixa
	clear
	echo -e "Faixas selecionada: "
	echo $primeira_faixa, $segunda_faixa, $terceira_faixa, $quarta_faixa

}

function color_table(){

cat tabela_cores.txt
echo -e ""
echo -e "COR		1 Faixa		2 Faixa 	Faixa Multiplicadora		Tolerância"
echo -e "------------------------------------------------------------------------------------------------"
echo -e "Preto		0		0		x1				-"
echo -e "Marrom		1		1		x10				+-1%"
echo -e "Vermelho	2		2		x100				+-2%"
echo -e "Laranja		3		3		x1k				-"
echo -e "Amarelo		4		4		x10k				-"
echo -e "Verde		5		5		x100k				+-0,5%"
echo -e "Azul		6		6		x1M				+-0,025%"
echo -e "Violeta		7		7		x10M				+-0,1%"
echo -e "Cinza		8		8		-				+-0,05%"
echo -e "Branco		9		9		-				-"
echo -e "Dourado		-		-		x0,10				+-5%"
echo -e "Prateado	-		-		x0,01				+-10%"
echo -e "Sem cor		-		-		-				+-20%"
echo -e ""
echo -e "================================================================================================"
echo -e ""

}


function menu(){
echo -e ""
echo -e "Selecione a opção que deseja "
echo -e "1 - Calcular"
echo -e "2 - Tabela de cores"
echo -e "3 - Sair"
read opc_menu

if [ $opc_menu = 1 ]; then
	clear
	calculadora
elif [ $opc_menu = 2 ]; then
	clear
        color_table
	echo -e ""echo -e ""

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
