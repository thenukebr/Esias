#! /bin/bash

#scrip criado pelo ESIAS

#Variavéis
service="ssh"
processo="`service $service status | grep "Active" | awk -F : '{ print $2 }' | awk -F " " '{ print $1 }'`"
#inicialização


#######################################
#Checagem
checagem () {
clear

if [ $processo == "active" ]; then
clear
echo " $service ativo!..."
sleep 2
clear
echo " Finalizando $service!..."
sleep 2
service $service stop
clear

fi

if [ $processo == "inactive" ]; then
clear
echo " $service inativo!..."
sleep 2
clear
exit 

fi

}
#######################################
checagem;
