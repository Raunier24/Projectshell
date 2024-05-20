#!/bin/bash

# Definición e impresión de variables
echo "Introduce tus datos personales"
read -p "Nombre: " Nombre
read -p "Edad: " Edad
read -p "Ciudad: " Ciudad

# Solicitar entrada por consola
echo "Ingresar tu actividad favorita:"
read actividad

echo "Ingresa tu comida favorita:"
read comida

# Imprimir el texto con variables
echo "Mi nombre es $Nombre, tengo $Edad años y vivo en $Ciudad"

#Imprimir el texto con variables
echo "Mi actividad favorita es $actividad. Mi comida favorita es $comida"

sleep 7