#!/bin/bash

#Muestre en pantalla cuantos usuarios hay en el sistema
#"Totales de usuarios con cuenta sin importar
#si esta autenticado en el momento o no"

#Autor: Daniel M. Barrera Leguizamón

echo Lista de usuarios actuales que se encuentran en el sistema:
echo
who
echo
echo Lista de usuarios que se encuentran en el sistema, no necesariamente se encuentran conectados con información completa:
echo
cat /etc/passwd

