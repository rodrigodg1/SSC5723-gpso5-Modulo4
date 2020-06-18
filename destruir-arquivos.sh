#!/bin/sh


#FUNÇÃO RESPONSAVEL POR DESTRUIR O ARQUIVO QUE RECEBE ($1) DO LOOP
destroi_arquivo() {

   sleep 2
   
   #time -p rm arquivo$1.txt
   #stace -c por possuir mais casas decimais
   strace -c rm arquivo$1.txt
   
}



a=1


#LOOP PARA A REMOÇÃO DOS ARQUIVOS
while [ "$a" -lt 11 ]   
do
   

   
   echo "\n\nDestruindo arquivo ($a/10)  ..."		
   
   #CHAMA A FUNÇÃO PASSANDO O INDICE DO ARQUIVO QUE FOI CRIADO ANTERIORMENTE
   destroi_arquivo $a
   
   echo "Arquivo $a destruido !"


   a=`expr $a + 1`
done








