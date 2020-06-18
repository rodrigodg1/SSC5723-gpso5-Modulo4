#!/bin/sh


#FUNÇÃO RESPONSÁVEL POR CRIAR O ARQUIVO DO TAMANHO QUE RECEBE EM $1
cria_arquivo() {

   sleep 2
   
   dd if=/dev/zero of=arquivo$2.txt bs=$1 count=1 status=progress
   
   
}



a=1

   echo "Digite o Tamanho do Arquivo\n\n5KB \n10KB \n100KB \n1MB\n10MB \n100MB \n500MB
\n\nExemplo:1MB [ENTER]:"
   read tamanho

#LOOP PARA CRIAR 10 ARQUIVOS PARA TIRAR A MÉDIA DOS TEMPOS 
while [ "$a" -lt 11 ]   
do
   

   
   echo "\n\nCriando arquivo ($a/10)  ..."
   
   #PASSA PARA A FUNÇÃO, O TAMANHO E O INDICE PARA A CRIAÇÃO DO ARQUIVO
   cria_arquivo $tamanho $a
   
   echo "Arquivo $a criado !"

   a=`expr $a + 1`
done







