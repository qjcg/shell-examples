#!/usr/bin/env bash
#
# Script name: atualiza_sistema.sh - Upgrade system linux Ubuntu.
# Written by:  Amaury Souza
# Maintenance: Amaury Souza
#
# ------------------------------------------------------------------------ #
#  Usage:
#      $ ./atualiza_sistema.sh 
# ------------------------------------------------------------------------ #
# History:
#
#   v1.0 03/05/2019, Amaury:
#       - start the program
#       - add apt list --upgradable command
#   v1.1 10/05/2019, Amaury:
#       - changed the parameter $0
# ------------------------------------------------------------------------ #
# Bash version:
#   Bash 4.4.19
# ------------------------------------------------------------------------ #
# Thankfulness:
#
#         Adriano Borges - find out another command for list upgrades
#         Jorge Borges   - sent a suggestion to add option -y
# ------------------------------------------------------------------------ #
TIME=1
clear
while true; do
echo "SEJA BEM VINDO AO $0 DO UBUNTU!"
echo " "
echo "Escolha uma opção abaixo para começar!
      
      1 - Verificar repositório do sistema
      2 - Mostrar atualizações do sistema
      3 - Instalar atualizações do sistema
      4 - Limpar o sistema
      5 - Remover pacotes não necessários
      0 - Sair do sistema"
echo " "
echo -n "Opção escolhida: "
read opcao
case $opcao in
	1) 
		echo Verificando o sistema por atualizações...
		sleep $TIME
		apt update
		;;
	2)
		echo Mostrando as atualizações do sistema...
		sleep $TIME
		apt list --upgradable
		;;
	3)
		echo Instalando atualizações do sistema...
		sleep $TIME
		apt upgrade -y
		;;
	4)
		echo Limpando o sistema...
		apt clean
		apt autoclean 
		;;
	5) 
		echo Removendo pacotes desnecessários do sistema...
		sleep $TIME
		apt autoremove -y
		;;
	0)
		echo Saindo do sistema...
		sleep $TIME
		exit 0
		;;
		
	*)
		echo Opção inválida, tente novamente!
		;;
esac
done
