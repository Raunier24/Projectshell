#!/bin/bash

echo "Introduce 3 Modelos de celulares"

read celular1

read celular2

read celular3

# Imprimir el primer y tercer parámetro
echo "Los Celulares más caros son: $celular1"
echo "Los Celulares más vendidos son: $celular3"

# Solicitar el color de celular al usuario
echo "Introduce el color que deseas"
read Color

# Contar la cantidad de parámetros (en este caso, siempre serán 3)
cantidad_parametros=3

# Completar y mostrar la frase final
echo "Con el color $Color existen $cantidad_parametros celulares"

# Otra manera de hacer el ejercicio
# echo $1 $3
# echo "El parámetro 1 y 3 son $1 y $3"
# "En el fichero $0 existen existen $#"