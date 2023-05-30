# Archivo docker-compose.yml

<p align="center"><img src="../../assets/clase-4-lab-10-img1.PNG" width="600"/></p>

# Crear carpeta data para tener el volumen de la BD postgres localmente 
```
mkdir data
```

# Crear la imagen por medio del docker-compose.yml

```
docker-compose up -d --build
```

<p align="center"><img src="../../assets/clase-4-lab-10-img2.PNG" width="600"/></p>


# Verificamos que el contenedor postgres este corriendo
```
docker ps

```

<p align="center"><img src="../../assets/clase-4-lab-10-img3.PNG" width="600"/></p>

# Verificamos pgadmin in puerto 8080
Entramos con admin y clave configurada en el archivo docker-compose.yml 

<p align="center"><img src="../../assets/clase-4-lab-10-img4.PNG" width="600"/></p>

