# Esias
Editor de scripts para inicialização automática de serviços
#
# Sumário
   ## 1.1 - Gerenciador de serviços (ESIAS)
   
###		1.1.1 - Criar scripts com o ESIAS 

Essa opção é referente a criação de dois arquivos "serviço-init.sh e serviço-stop.sh" ambos ficam separados dentro da pasta "esias/scripts/init e esias/scripts/kill" 
      
 ##### esias/scripts/init = script de checagem para inicializar um processo
 ##### esias/scripts/kill = script de checagem para finalizar um processo
 ##### Na hora de criar um arquivo use o nome do processo somente "ex: ssh, apache2 e etc"
      
###		1.1.2 - Iniciar serviço 
Essa opção busca o script de inicialização na pasta "esias/scripts/init" e faz uma checagem

se o serviço indicado no script estiver inativo ele inicia o processo

#### nota na hora de escolher o script você deverá usar o nome completo - porém pode ser usado o "TAB" para autocompletar o nome do script

###		1.1.3 - Matar processos

Essa opção busca o script de inicialização na pasta "esias/scripts/kill" e faz uma checagem
se o serviço indicado no script estiver ativo ele finaliza o processo

#### nota na hora de escolher o script você deverá usar o nome completo - porém pode ser usado o "TAB" para autocompletar o nome do script

###		1.1.4 - Deletar scripts

Essa opção te da a função de excluir seus scripts
#### Ex:

###############################

 Scripts de inicialização
 
ssh

 Scripts de finalização
 
ssh

###############################

para excluir um script deve ser usado o nome indicado ignorando o resto do nome do arquivo. Ex: nome-init.sh e nome-stop.sh

usando como citado acima somente "ssh"

#### Após escolher o nome do arquivo ex:ssh - o terminal vai te questionar sobre como prosseguir com a exclusão
Remover script(s) Ambos/Inicialização/Finalização? A/I/F
### Opções

A= Exclui ambos os arquivos das pastas esias/script/init e esias/script/kill

I= Exclui o arquivo referente a pasta esias/script/init

F= Exclui o arquivo referente a pasta esias/script/kill

###		1.1.5 - Listar Scripts

#### Lista os scripts dentro das pastas (esias/script/init e esias/script/kill)
