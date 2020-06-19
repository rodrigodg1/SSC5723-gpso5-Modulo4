#!/bin/sh


#FUNÇÃO RESPONSÁVEL POR CRIAR O ARQUIVO DO TAMANHO QUE RECEBE EM $1
cria_arquivo() {

		
   echo "Caminho sendo utilizado para CRIACAO: $3"	
   sleep 2
   
   #CRIA O ARQUIVO
   dd if=/dev/zero of=$3/arquivo$2.txt bs=$1 count=1 status=progress
   
   
}



#REALIZA A LEITURA DO TAM DO ARQUIVO, QUANTIDADE E O PATH DO SISTEMA DE ARQUIVO
   echo "\nDigite o TAMANHO do Arquivo\n\n  5KB \n  10KB \n  100KB \n  1MB\n  10MB \n  100MB \n  500MB
\n\nExemplo:1MB [ENTER]:"
   read tamanho

   echo "\nInforme a QUANTIDADE de arquivos a serem CRIADOS para a analise:"
   read quantidade

   echo "\nDigite o CAMINHO do sistema de arquivo destino:"
   echo "Exemplo: /media/rodrigo/FAT32/"
   echo "ou . para o diretorio atual\n"
   read caminho


a=1


#LOOP PARA CRIAR 10 ARQUIVOS PARA TIRAR A MÉDIA DOS TEMPOS 
while [ "$a" -lt `expr $quantidade + 1` ]   
do
   
   
   echo "\n\nCriando arquivo ($a/$quantidade)  ..."
   
   #PASSA PARA A FUNÇÃO, O TAMANHO E O INDICE PARA A CRIAÇÃO DO ARQUIVO
   cria_arquivo $tamanho $a $caminho
   
   echo "Arquivo $a criado !"

   a=`expr $a + 1`
done





