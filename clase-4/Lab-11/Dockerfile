FROM ubuntu

# Actualiza el repositorio sources list
RUN apt-get update

# Instala y corre apache
RUN apt-get install -y apache2 && apt-get clean

# Exponemos el puerto 80
EXPOSE 80

RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata

RUN apt-get install -y php libapache2-mod-php php-mysql

RUN apt-get install git -y

WORKDIR /var/www/html/

RUN git clone https://github.com/roxsross/The-DevOps-Journey-101.git
RUN cp -r The-DevOps-Journey-101/CLASE-02/lamp-app-ecommerce/* .

RUN sed -i 's/172.20.1.101/localhost/g' index.php

RUN rm -r The-DevOps-Journey-101

RUN mv index.html index.html.bkp

# Iniciamos apache
CMD apachectl -D FOREGROUND