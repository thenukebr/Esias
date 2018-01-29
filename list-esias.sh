#! /bin/bash

#source
source src/colors

#Var
scriptsinit="scripts/init/"
scriptskill="scripts/kill/"
###############################################
list () {
clear
echo -e "$white Scripts de inicialização$transparent"
echo "`ls $scriptsinit*-init.sh | awk -F "-" '{ print $1 }' | awk -F "/" '{ print $3 }'`"
echo
echo -e "$white Scripts de finalização$transparent"
echo "`ls $scriptskill*-stop.sh | awk -F "-" '{ print $1 }' | awk -F "/" '{ print $3 }'`"
echo
read -p "Aperte qualquer tecla para sair! " -n 1 quitlist

if [ "$quitlist" == "*" ]; then
exit 0
fi
}
list;
