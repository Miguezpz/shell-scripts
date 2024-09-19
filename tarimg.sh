#!/bin/bash


#Mensaje de inicio
echo "Inicio de busqueda y compresión de imagenes..." &&


#Creamos directorio para almacenar la compresion de archivos con la extension .tar.gz
echo "Creando directorio para guardar imagenes..." &&
mkdir -p mis_imagenes &&
echo "Directorio mis_imagenes creado" &&

#Iniciamos busqueda de imagenes y copiamos a la ruta actual
echo "Buscando y copiando imagenes a directorio creado..." &&
find $(pwd) -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.svg" -o -name "*.raw" -o -name "*.gif" -o -name "*.heif" -o -name "*.mbp" -o -name "*.tiff" -o -name "*.psd" \) -exec cp {} ./mis_imagenes/ \; &&
echo "Imagenes guardadas en directorio"

#Creamos tar.gz
echo "Comprimiendo imagenes" &&
tar -czvf mis_imagenes.tar.gz ./mis_imagenes &&


#Eliminamos carpeta
echo "Removiendo directorio con imagenes" &&
rm -r $(pwd)/mis_imagenes &&


#Mensaje de finalización
echo "Compresión finalizada exitosamente"

