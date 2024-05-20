#!/bin/bash

# Obtener el PID del script

# comando para saber el PID del script e imprimirlo: pid=$$ echo "El PID de este script es $$"

# Inicializar el contador de intentos
intentos=0

# Bucle hasta que el usuario adivine el PID
while true; do
  ((intentos++))
  echo "Intento $intentos. Ingrese un número:"
  read numero

  if [ $numero -eq $pid ]; then
    echo "¡Felicidades! Adivinaste el PID en $intentos intentos."
    break
  elif [ $numero -lt $pid ]; then
    echo "El número ingresado es menor que el PID."
  else
    echo "El número ingresado es mayor que el PID."
  fi
done