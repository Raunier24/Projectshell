#!/bin/bash

# Agregar un archivo
read -p "Ingrese el nombre del archivo que desea agregar: " nombre_archivo
touch "$nombre_archivo" && echo "El archivo $nombre_archivo ha sido agregado correctamente."

# Esperar 3 segundos
sleep 3

# Mostrar la lista de archivos actuales
ls

# Preguntar si se desea borrar un archivo
read -p "¿Desea borrar un archivo? (s/n): " respuesta

if [ "$respuesta" = "s" ]; then
    # Borrar un archivo
    read -p "Ingrese el nombre del archivo que desea borrar: " nombre_a_borrar
    rm -i "$nombre_a_borrar" && echo "El archivo $nombre_a_borrar ha sido borrado correctamente."
else
    echo "Ok, no borraremos ningún archivo."
fi
