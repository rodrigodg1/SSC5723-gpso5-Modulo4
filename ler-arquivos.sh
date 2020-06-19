#!/bin/sh


#FUNÇÃO RESPOSÁVEL POR LER O ARQUIVO QUE RECEBE EM $1 E MOSTRAR O TEMPO DE LEITURA
ler_arquivo() {


   #VERIFICA SE O DIRETORIO PARA CRIACAO EH O ATUAL	

		
   echo "Caminho sendo utilizado para LEITURA: $2"	
   sleep 2
   
   
   #realiza a leitura do arq 
   strace -c cat $2/arquivo$1.txt
   
}



a=1

   echo "\nDigite o Caminho do Sistema de Arquivo Destino:"
   echo "Exemplo: /media/rodrigo/FAT32/"
   echo "ou"
   echo ". para o Diretorio Atual\n"
   read caminho



#LOOP PARA A LEITURA DOS ARQUIVOS CRIADOS
while [ "$a" -lt 11 ]   
do
   

   
   echo "\nLendo o arquivo ($a/10)  ..."	
   
   #CHAMA A FUNÇÃO PASSANDO O INDICE DO ARQUIVO QUE FOI CRIADO ANTERIORMENTE
   ler_arquivo $a $caminho
   
   echo "Arquivo $a lido !"


   a=`expr $a + 1`
done






