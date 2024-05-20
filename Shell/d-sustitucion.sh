#!/bin/bash

# Solicitar la fecha de nacimiento al usuario y calcular la edad
read -p "Por favor, ingrese su fecha de nacimiento (formato: YYYY-MM-DD): " fecha_nacimiento
edad=$((($(date +%s) - $(date -d "$fecha_nacimiento" +%s)) / 31536000))

# Mostrar la edad
echo "Su edad es: $edad años"
