#! /bin/bash

#source
source src/colors

#Var
scriptsinit="scripts/init/"
scriptskill="scripts/kill/"
fileinit="scripts/init/$scriptop-init.sh"
filekill="scripts/kill/$scriptop-stop.sh"
###############################################
dell () {
clear
echo -e "$white Scripts de inicialização$transparent"
echo "`ls $scriptsinit*-init.sh | awk -F "-" '{ print $1 }' | awk -F "/" '{ print $3 }'`"
echo
echo -e "$white Scripts de finalização$transparent"
echo "`ls $scriptskill*-stop.sh | awk -F "-" '{ print $1 }' | awk -F "/" '{ print $3 }'`"
echo
read -p "Qual script deseja deletar? ex: ssh :" scriptop
echo
read -p "Remover script(s) Ambos/Inicialização/Finalização? A/I/F: " rmlist

if [ "$rmlist" == "A" ]; then
`rm $scriptsinit$scriptop*`
`rm $scriptskill$scriptop*`
exit 0

elif [ "$rmlist" == "I" ]; then
`rm $scriptsinit$scriptop*`
exit 0

elif [ "$rmlist" == "F" ]; then
`rm $scriptskill$scriptop*`
exit 0

else [ "$rmlist" == "*" ]
echo -e "$red Opção Inválida!$transparent"
	   sleep 1.5
exit 1

fi

}
###############################################
dell;
