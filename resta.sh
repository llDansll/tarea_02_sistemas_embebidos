#!/bin/bash

#Realiza la resta de 2 parámetros introducidos (tendrá que poder sumar números decimales, como 2.2 – 3) 
#puede usar el script anterior para depurar las entradas.

echo Los números ingresados son
echo $1 y $2

#Se utiliza la siguiente asignación de variable conocer si el dato es un número entero,
#ó número decimal, ó número  positivo o negativo.
dato_01="^-?[0-9]+([.][0-9]+)?$"
dato_02="^-?[0-9]+([.][0-9]+)?$"

#Condionales para mostrar en consola si los datos ingresado fueron son números o no.
if [[ $1 =~ $dato_01 ]]
then
	echo El dato 1 ingresado es un número
else
	echo El dato 1 ingresado no es un número
fi

if [[ $2 =~ $dato_02 ]]
then
	echo El dato 2 ingresado es un número
else
	echo El dato 2 ingresado no es un número
fi

#Condicional para saber si se pueden restar los números o no
if [[ (($1 =~ $dato_01) && ($2 =~ $dato_02)) ]]
then
	echo El resultado de la resta entre $1 y $2 es:
#Utilizamos la función bc "basic calculator" para operar números decimales
	bc -l <<< "scale=2; $1-$2"
else
	echo No se puede realizar la resta, alguno de los datos no es numérico
fi
