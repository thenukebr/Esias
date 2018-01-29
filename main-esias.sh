#! /bin/bash

# ESIAS
# Editor de scripts para inicialização automática de serviços


#####################################################################################################################
esias () {
echo " Qual o serviço a ser usado? ex: teste"
read -p ": " esiasop
echo "esiasop=\"$esiasop\"" > /tmp/var
read -p " Criar script para o serviço: $esiasop? S/n: " yesnoesias

case $yesnoesias in

	S) echo "yesnoesias=\"$yesnoesias\"" >> /tmp/var
		
		#./src/esias/start-esias.sh;
		#./src/esias/stop-esias.sh;
		./start-esias.sh;
		./stop-esias.sh;
		rm /tmp/var
		exit 0;;

	n) echo " Cancelando operação! "
		sleep 1.5
		exit 2;;


	*) echo " Opção Inválida! "
		sleep 1.5
		esias;;

esac

}
#######################################################################################################################
esias;
