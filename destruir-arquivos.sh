#!/bin/sh


#FUNÇÃO RESPONSAVEL POR DESTRUIR O ARQUIVO QUE RECEBE ($1) DO LOOP
destroi_arquivo() {


   echo "Caminho sendo utilizado para DESTRUICAO: $2"	
   sleep 2

   #realiza a remocao do arq 
   strace -c rm $2/arquivo$1.txt
   
}


   echo "\nDigite o CAMINHO do sistema de arquivo destino:"
   echo "Exemplo: /media/rodrigo/FAT32/"
   echo "ou . para o Diretorio Atual\n"
   read caminho

   echo "\nInforme a QUANTIDADE de arquivos a serem REMOVIDOS para a analise:"
   read quantidade	


a=1


#LOOP PARA A REMOÇÃO DOS ARQUIVOS
while [ "$a" -lt `expr $quantidade + 1` ]   
do
   
   
   echo "\nDestruindo arquivo ($a/$quantidade)  ..."		
   
   #CHAMA A FUNÇÃO PASSANDO O INDICE DO ARQUIVO QUE FOI CRIADO ANTERIORMENTE
   destroi_arquivo $a $caminho
   
   echo "Arquivo $a destruido !"


   a=`expr $a + 1`
done






