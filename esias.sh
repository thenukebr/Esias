#! /bin/bash


######################################
#	    Este é o ESIAS	     #
#Editor de scripts para inicialização#
#	 automática de serviços	     #
######################################
#Source
source src/colors
# Variavéis
##Scripts
esias="./main-esias.sh"
esiasinit="./init-esias.sh"
esiaskill="./kill-esias.sh"
esiasdell="./dell-esias.sh"
esiaslist="./list-esias.sh"

##Diretórios
esiasmain="src/esias/"
esiasscrinit="scripts/init/"
esiasscrkill="scripts/kill/"
#inicialização
if [[ $EUID -ne 0 ]]; then
        echo -e "\e[1;31mVocê precisa executar esse script como root."$transparent""
        exit 1
fi

if [ -z "${DISPLAY:-}" ]; then
    echo -e "\e[1;31mThe script should be executed inside a X (graphical) session."$transparent""
    exit 1
fi

clear
########################################################
banner () {
clear
echo "

  ______  _____ _____           _____ 
 |  ____|/ ____|_   _|   /\    / ____|
 | |__  | (___   | |    /  \  | (___  
 |  __|  \___ \  | |   / /\ \  \___ \ 
 | |____ ____) |_| |_ / ____ \ ____) |
 |______|_____/|_____/_/    \_|_____/ 
                                  V 1.0"
echo
}
########################################################
esias () {
while
banner;
echo "	1 - Criar scripts com o ESIAS"
echo "	2 - Iniciar serviço"
echo "	3 - Matar processos"
echo "	4 - Deletar scripts"
echo "	5 - Listar Scripts"
echo
echo "	0 - Sair"
	
	echo
	read -p " Opção: " esiasop
	echo
	do
	case $esiasop in

	1) $esias;;
	2) $esiasinit;;
	3) $esiaskill;;
	4) $esiasdell;;
	5) $esiaslist;;
	0) exit 0;;
	*) echo -e "$red Opção Inválida!$transparent"
	   sleep 1.5
	   esias;;
esac
done

}
########################################################
esias;
