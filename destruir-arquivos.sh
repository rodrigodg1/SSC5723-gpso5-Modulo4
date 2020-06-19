#!/bin/sh


#FUNÇÃO RESPONSAVEL POR DESTRUIR O ARQUIVO QUE RECEBE ($1) DO LOOP
destroi_arquivo() {


   echo "Caminho sendo utilizado para DESTRUICAO: $2"	
   sleep 2

   #realiza a remocao do arq 
   strace -c rm $2/arquivo$1.txt
   
}



a=1

   echo "\nDigite o Caminho do Sistema de Arquivo Destino:"
   echo "Exemplo: /media/rodrigo/FAT32/"
   echo "ou"
   echo ". para o Diretorio Atual\n"
   read caminho



#LOOP PARA A REMOÇÃO DOS ARQUIVOS
while [ "$a" -lt 11 ]   
do
   
   
   echo "\nDestruindo arquivo ($a/10)  ..."		
   
   #CHAMA A FUNÇÃO PASSANDO O INDICE DO ARQUIVO QUE FOI CRIADO ANTERIORMENTE
   destroi_arquivo $a $caminho
   
   echo "Arquivo $a destruido !"


   a=`expr $a + 1`
done






