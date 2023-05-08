#!/bin/bash

# Sitúate en tu directorio personal de usuario
echo "Going to user home"
cd $HOME

# Crea un directorio llamado "nueva_carpeta"
echo "Creating nueva_carpeta folder"
mkdir nueva_carpeta

# Accede a esta carpeta que acabas de crear
echo "Going to nueva_carpeta"
cd nueva_carpeta

# Crea un archivo en este directorio y llámalo archivo_nuevo.txt
echo "Creating archivo_nuevo.txt file"
touch archivo_nuevo.txt

# Cámbiale el nombre a este último archivo que has creado y llámalo archivo_viejo.txt
echo "Changing name archivo_nuevo to archivo_viejo"
mv archivo_nuevo.txt archivo_viejo.txt

# Añade el texto "Nueva línea de texto" al archivo desde el terminal
echo "Adding Nueva linea de texto to archivo_viejo.txt"
echo "Nueva linea de texto" > archivo_viejo.txt

# Cambia los permisos de este archivo para que todos los usuarios puedan leer, escribir y ejecutarlo
echo "Changing permisos to archivo_viejo.txt"
chmod 777 archivo_viejo.txt

# Sube un nivel de directorio, es decir, vuelve al directorio anterior
echo "Going to parent of archivo_viejo.txt"
cd ..

# Crea un enlace al archivo que creaste en esta carpeta llamado "enlace.ln"
echo "Creating link to archivo_viejo.txt"
ln -s nueva_carpeta/archivo_viejo.txt enlace.ln

# Elimina el directorio "nueva_carpeta" y los archivos que contenga
echo "Deleting nueva_carpeta folder"
rm -rf nueva_carpeta


