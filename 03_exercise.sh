#!/bin/bash

#Realizar un script que muestre cuantos puertos seriales "/dev/ttyS#"
#hay en el sistema

#Se usa el comando cat para verificar la presencia de puertos seriales configurados
sudo cat /proc/tty/driver/serial
echo

#Nos ubicamos en el directorio dev para mirar el estado actual de los perifericos configurados
cd /dev

#Se muestra el número de puertos seriales presentes en el sistema utilizando el comodin tty*
echo Numero de puertos seriales en el sistema:
ls tty* | wc -l

#Se retorna a la carpeta de la tarea
cd /home/pi/tarea_02/



