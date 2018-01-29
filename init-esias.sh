#! /bin/bash

# ESIAS
# Editor de scripts para inicialização automática de serviços
# iniciador de processos
#source
source src/colors
#Var
scriptsin="scripts/init/"
scriptsout="../../"
#########################################################
banner () {
clear
echo
}
#########################################################
initesias () {
banner
cd $scriptsin
read -e -p "Qual o processo a ser usado? ex:ssh " processoinit
echo
read -p "Usar o script $processoinit? S/n: " yesnoscript

if [ "$yesnoscript" == "S" ]; then
./$processoinit
cd $scriptout
exit 0

elif [ "$yesnoscript" == "n" ]; then
echo -e "$red Cancelando Operação!$transparent"
cd $scriptout
sleep 1.5
exit 1


else [ "$yesnoscript" == "*" ]
echo -e "$red Comando Inválido!$transparent"
cd $scriptout
sleep 1.5
exit 1

fi

}
#########################################################
initesias;
