#!/bin/sh


#FUNÇÃO RESPOSÁVEL POR LER O ARQUIVO QUE RECEBE EM $1 E MOSTRAR O TEMPO DE LEITURA
ler_arquivo() {


   #VERIFICA SE O DIRETORIO PARA CRIACAO EH O ATUAL	

		
   echo "Caminho sendo utilizado para LEITURA: $2"	
   sleep 2
   
   
   #realiza a leitura do arq 
   strace -c cat $2/arquivo$1.txt
   
}




   echo "\nDigite o caminho do sistema de arquivo destino:"
   echo "Exemplo: /media/rodrigo/FAT32/"
   echo "ou . para o diretorio atual\n"
   read caminho

   echo "\nInforme a QUANTIDADE de arquivos a serem LIDOS para a analise:"
   read quantidade

a=1


#LOOP PARA A LEITURA DOS ARQUIVOS CRIADOS
while [ "$a" -lt `expr $quantidade + 1` ]   
do
   

   
   echo "\nLendo o arquivo ($a/$quantidade)  ..."	
   
   #CHAMA A FUNÇÃO PASSANDO O INDICE DO ARQUIVO QUE FOI CRIADO ANTERIORMENTE
   ler_arquivo $a $caminho
   
   echo "Arquivo $a lido !"


   a=`expr $a + 1`
done






