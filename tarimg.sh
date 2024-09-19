#!/bin/bash


#Mensaje de inicio
echo "Inicio de busqueda y compresión de imagenes..." &&


#Creamos directorio para almacenar la compresion de archivos con la extension .tar.gz
echo "Creando directorio para guardar imagenes..." &&
mkdir -p my-images &&
echo "Directorio my-images creado" &&

#Iniciamos busqueda de imagenes y copiamos a la ruta actual
echo "Buscando y copiando imagenes a directorio creado..." &&
find $(pwd) -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.svg" -o -name "*.raw" -o -name "*.gif" -o -name "*.heif" -o -name "*.mbp" -o -name "*.tiff" -o -name "*.psd" \) -exec cp {} ./my-images/ \; &&
echo "Imagenes guardadas en directorio"

#Creamos tar.gz
echo "Comprimiendo imagenes" &&
tar -czvf my-images.tar.gz ./my-images &&


#Eliminamos carpeta
echo "Removiendo directorio con imagenes" &&
rm -r $(pwd)/my-images &&


#Mensaje de finalización
echo "Compresión finalizada exitosamente"