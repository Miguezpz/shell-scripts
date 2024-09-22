#!/bin/bash


#Mensaje de inicio
echo "Inicio de busqueda y copia de imagenes..." &&


#Creamos directorio para guardar imagenes
echo "Creando directorio para guardar imagenes..." &&
mkdir -p my-images &&
echo "Directorio my-images creado" &&


#Iniciamos busqueda de imagenes y copiamos a la ruta actual
echo "Buscando y copiando imagenes a directorio creado..." &&
find $(pwd) -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.svg" -o -name "*.raw" -o -name "*.gif" -o -name "*.heif" -o -name "*.mbp" -o -name "*.tiff" -o -name "*.psd" \) -exec cp {} ./my-images/ \; &&
echo "Imagenes guardadas en directorio"


#Mensaje de finalización
echo "Copia de imagenes finalizada"

