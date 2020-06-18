#!/bin/sh


#FUNÇÃO RESPOSÁVEL POR LER O ARQUIVO QUE RECEBE EM $1 E MOSTRAR O TEMPO DE LEITURA
ler_arquivo() {

   sleep 2
   
   #time -p cat arquivo$1.txt
   strace -c cat arquivo$1.txt
   
}



a=1


#LOOP PARA A LEITURA DOS ARQUIVOS CRIADOS
while [ "$a" -lt 11 ]   
do
   

   
   echo "\n\nLendo o arquivo ($a/10)  ..."	
   
   #CHAMA A FUNÇÃO PASSANDO O INDICE DO ARQUIVO QUE FOI CRIADO ANTERIORMENTE
   ler_arquivo $a
   
   echo "Arquivo $a lido !"


   a=`expr $a + 1`
done








