#!/bin/sh


#FUNÇÃO RESPONSÁVEL POR CRIAR O ARQUIVO DO TAMANHO QUE RECEBE EM $1
cria_arquivo() {

		
   echo "Diretorio sendo utilizado para CRIACAO: $3"	
   sleep 2
   
   #CRIA O ARQUIVO
   dd if=/dev/zero of=$3/arquivo$2.txt bs=$1 count=1 status=progress
   
   
}



a=1

   echo "Digite o Tamanho do Arquivo\n\n5KB \n10KB \n100KB \n1MB\n10MB \n100MB \n500MB
\n\nExemplo:1MB [ENTER]:"
   read tamanho

   echo "\nDigite o Caminho do Sistema de Arquivo Destino"
   echo "Exemplo: /media/rodrigo/FAT32/"
   echo "ou"
   echo ". para o Diretorio Atual"
   read caminho




#LOOP PARA CRIAR 10 ARQUIVOS PARA TIRAR A MÉDIA DOS TEMPOS 
while [ "$a" -lt 11 ]   
do
   
   
   echo "\n\nCriando arquivo ($a/10)  ..."
   
   #PASSA PARA A FUNÇÃO, O TAMANHO E O INDICE PARA A CRIAÇÃO DO ARQUIVO
   cria_arquivo $tamanho $a $caminho
   
   echo "Arquivo $a criado !"

   a=`expr $a + 1`
done






