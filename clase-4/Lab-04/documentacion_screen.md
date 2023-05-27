#  1.Clonamos el repositorio
    git clone https://github.com/roxsross/The-DevOps-Journey-101.git
    y nos posicionamos en la carpeta del challenge correspondiente.
    cd /The-DevOps-Journey-101/CLASE-04/Challenge/04
    ls
![](https://github.com/ivangrr/devops2023/blob/main/assets/1-clase-4-lab-04-img1-ls-.PNG)
    
    
 ## 1.1. Creamos el archivo "Dockerfile"
![](https://github.com/ivangrr/devops2023/blob/main/assets/2-clase-4-lab-04-img2-Dockerfile-.PNG)
  
    
    
 ## 1.2. Creamos la imagen con el siguiente comando
    docker build . -t simple-apache:new
![](https://github.com/ivangrr/devops2023/blob/main/assets/3-clase-4-lab-04-img3-1-2.png)
# 2. Se ejecuta un contenedor con la nueva imagen
    docker run -d --name myapache -p 5050:80 simple-apache:new
![](https://github.com/ivangrr/devops2023/blob/main/assets/4-clase-4-lab-04-img4-2-.png)

# 3. Ver capas de la imagén
 ## 3.1. #En el apartado "Layers" pueden contarse cuántas capas hay
  docker inspect simple-apache:new
![](https://github.com/ivangrr/devops2023/blob/main/assets/5-clase-4-lab-04-img5-3-1-.png)
    
 ## 3.2. #Todas las acciones que son < 0B son capas
    docker history simple-apache:new
![](https://github.com/ivangrr/devops2023/blob/main/assets/6-clase-4-lab-04-img6-3-2-.png)
    
    docker image simple-apache:new -f '{{.RootFS.Layers}}'
![](https://github.com/ivangrr/devops2023/blob/main/assets/7-clase-4-lab-04-img2-3-2-2-.png)
    
    Vista del Sitio Web
    ![VISTA DE SITIO WEB](https://github.com/ivangrr/devops2023/blob/main/assets/8-clase-4-lab-04-img2-preview-web-.png)
