#!/bin/bash

#Verifica si un único argumento de entrada es numérico.

#Autor: Daniel M. Barrera Leguizamón

#Muestra el dato ingresado y lo guarda en la variable 1:
echo El dato ingresado fue:
echo $1

#Se utiliza la siguiente asignación de variable conocer si el dato es un número entero,
#ó número decimal, ó número  positivo o negativo.
dato="^-?[0-9]+([.][0-9]+)?$"

#Condional para mostrar en consola si el dato ingresado fue un número o no.
if [[ $1 =~ $dato ]]
then
	echo El dato ingresado es un número
else
	echo El dato ingresado no es un número
fi
