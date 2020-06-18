#!/bin/sh


#FUNCAO RESPONSAVEL POR CRIAR O ARQUIVO DO TAMANHO QUE RECEBE EM $1
cria_arquivo() {

   sleep 2
   
   dd if=/dev/zero of=arquivo$2.txt bs=$1 count=1 status=progress
   
   
}



a=1

   echo "Digite o Tamanho do Arquivo\n\n5KB \n10KB \n100KB \n1MB\n10MB \n100MB \n500MB
\n\nExemplo:1MB [ENTER]:"
   read tamanho

#LOOP PARA AS 10 ITERACOES
while [ "$a" -lt 11 ]   
do
   

   
   echo "\n\nCriando arquivo ($a/10)  ..."		
   cria_arquivo $tamanho $a
   echo "Arquivo $a criado !"


   a=`expr $a + 1`
done







