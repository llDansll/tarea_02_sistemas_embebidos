#!/bin/bash

#Imprime los argumentos de entrada separados por coma,
#sin importar cuántos sean, si no entran argumentos no se imprime nada

#Autor: Daniel M. Barrera Leguizamón

#Se reciben argumentos de entrada
args=("$@")

#Condicional para conocer si existen argumentos de entrada o no
if [ $# == "0" ]
#Si no existen argumentos de entrada no imprima nada
then
	echo
#Si existen argumentos de entrada
else
#Imprimir mensaje
	echo Los argumentos de entrada son:
#Mostrar los argumentos "sin coma"
	echo $@
	echo Los argumentos de entrada separados por coma son:
#Bucle para imprimir los datos separados por coma, el utimo dato se imprime "sin coma" al final
	for ((i = 0 ; i < ($#-1) ; i++));
	do
		echo -n ${args[i]},
	done
	#let "i+=1"
#Impresión del último dato sin coma al final
	echo -n ${args[i]}
	echo
fi
