#!/bin/bash

# Define el nombre del archivo
filename="viaje.txt"

# Contar el número de parámetros del archivo
param_count=$(grep -oP '(?<=param=)\w+' $filename | wc -l)

# Print the completed phrase
echo "En el fichero $filename existen $param_count parámetros."
