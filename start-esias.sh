#! /bin/bash

# ESIAS
# Editor de scripts para inicialização automática de serviços


#####################################################################################################################
esias () {
#echo " Qual o serviço a ser usado? ex: ssh"
#read -p ": " esiasop
#echo
#read -p " Criar script para o serviço: $esiasop? S/n: " yesnoesias

#####################################################################################################################
source /tmp/var
if [ "$yesnoesias" == "S" ]; then
echo "#! /bin/bash

#scrip criado pelo ESIAS

#Variavéis
service=\"$esiasop\"
processo=\"\`service \$service status | grep \"Active\" | awk -F : '{ print \$2 }' | awk -F \" \" '{ print \$1 }'\`\"
#inicialização


#######################################
#Checagem
checagem () {
clear

if [ \$processo == \"inactive\" ]; then
clear
echo \" \$service inativo!...\"
sleep 2
clear
echo \" Ativando \$service!...\"
sleep 2
service \$service start
clear

fi

if [ \$processo == \"active\" ]; then
clear
echo \" \$service ativo!...\"
sleep 2
clear
exit 

fi

}
#######################################
checagem;" > scripts/init/$esiasop-init.sh
chmod +x scripts/init/$esiasop-init.sh
echo
echo " Arquivo Salvo scripts/init/$esiasop-init.sh"
sleep 2.5
#clear
exit

elif [ "$yesnoesias" == "n" ]; then
echo
echo "Cancelando Operação! "
sleep 1.5
clear
exit

else [ "$yesnoesias" == "*" ]
echo
echo "Opção Inválida! "
sleep 1.5
clear
exit

fi

#####################################################################################################################
}
#####################################################################################################################
esias;
