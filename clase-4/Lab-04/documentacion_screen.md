#  1.Clonamos el repositorio
    git clone https://github.com/roxsross/The-DevOps-Journey-101.git
    y nos posicionamos en la carpeta del challenge correspondiente.
    cd /The-DevOps-Journey-101/CLASE-04/Challenge/04
    ![ls](https://prnt.sc/VCsTCfscvSi2)
    
    ## 1.1. Creamos el archivo "Dockerfile"
    
    ![Dockerfile](https://prnt.sc/5JWhz796HXlk)
    
    
    ## 1.2. Creamos la imagen con el siguiente comando
    docker build . -t simple-apache:new
    ![docker build . -t simple-apache:new](https://prnt.sc/FuPwkHHaJ1fD)

   # 2. Se ejecuta un contenedor con la nueva imagen
    ![docker run -d --name myapache -p 5050:80 simple-apache:new](https://prnt.sc/QhLZME0Qd9on)
    
   # 3. Ver capas de la imagén
## 3.1. #En el apartado "Layers" pueden contarse cuántas capas hay
    ![docker inspect simple-apache:new](https://prnt.sc/rUVkZr-dt0QX)
    
## 3.2. #Todas las acciones que son < 0B son capas
    ![docker history simple-apache:new](https://prnt.sc/zNmqzeTGgeHW)
    
    docker image inspect simple-nginx -f '{{.RootFS.Layers}}'
    ![docker image inspect simple-nginx -f '{{.RootFS.Layers}}'](https://prnt.sc/xOuIanG3P3tw)
    
![VISTA DE SITIO WEB](https://prnt.sc/7LuUKz7hu4ty)
