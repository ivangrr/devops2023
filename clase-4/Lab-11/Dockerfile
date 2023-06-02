FROM ubuntu

# Actualiza el repositorio sources list
RUN apt-get update

# Instala y corre apache
RUN apt-get install -y apache2 && apt-get clean

# Exponemos el puerto 80
EXPOSE 80

# Colocamos TZ
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata

# Instalamos php y las librerias necesarias para la conexion de la BD
RUN apt-get install -y php libapache2-mod-php php-mysql

# Instalamos git
RUN apt-get install git -y

# Situamos la carpeta /var/www/html/ como directorio de trabajo
WORKDIR /var/www/html/

# Bajamos el sitio web
RUN git clone https://github.com/roxsross/The-DevOps-Journey-101.git

# Copiamos el sitio web descargado en /var/www/html
RUN cp -r The-DevOps-Journey-101/CLASE-02/lamp-app-ecommerce/* .

# Remplazamos 172.20.1.101 del archivo index.php por db que es el host de la BD
RUN sed -i 's/172.20.1.101/db/g' index.php

# Eliminamos el directorio previamente descargado
RUN rm -r The-DevOps-Journey-101

# Cambiamos el nombre del archivo index.html
RUN mv index.html index.html.bkp

# Iniciamos apache
CMD apachectl -D FOREGROUND