#!/bin/sh



ler_arquivo() {

   sleep 2
   
   #time -p cat arquivo$1.txt
   strace -c cat arquivo$1.txt
   
}



a=1


#LOOP PARA AS 10 ITERACOES PARA LEITURA
while [ "$a" -lt 11 ]   
do
   

   
   echo "\n\nLendo o arquivo ($a/10)  ..."		
   ler_arquivo $a
   echo "Arquivo $a lido !"


   a=`expr $a + 1`
done








