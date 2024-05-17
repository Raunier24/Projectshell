#!/bin/bash

# Revisar si el valor ingresado es divisible por 2

echo "Ingrese un valor: "

read value


if [ $(($value % 2)) -eq 0 ]; then

  echo "El valor ingresado es divisible por 2."

else

  echo "El valor ingresado no es divisible por 2."

fi