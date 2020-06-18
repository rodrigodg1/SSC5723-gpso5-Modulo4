#!/bin/sh



destroi_arquivo() {

   sleep 2
   
   #time -p rm arquivo$1.txt
   strace -c rm arquivo$1.txt
   
}



a=1


#LOOP PARA AS 10 ITERACOES PARA REMOCAO
while [ "$a" -lt 11 ]   
do
   

   
   echo "\n\nDestruindo arquivo ($a/10)  ..."		
   destroi_arquivo $a
   echo "Arquivo $a destruido !"


   a=`expr $a + 1`
done








