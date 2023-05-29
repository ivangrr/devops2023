```
apt-get install tree
tree .
```
<p align="center"><img src="../../assets/clase-4-lab-06-img1.PNG" width="600"/></p>

# Dockerfile

<p align="center"><img src="../../assets/clase-4-lab-06-img2.PNG" width="600"/></p>

# Construir la imagen

```
docker build -t roxsross12/pokepy-ejemplo:1.0 .
```

<p align="center"><img src="../../assets/clase-4-lab-06-img3.PNG" width="600"/></p>

<p align="center"><img src="../../assets/clase-4-lab-06-img4.PNG" width="600"/></p>

# Verificar la creacion de la imagen

```
docker images
```

<p align="center"><img src="../../assets/clase-4-lab-06-img5.PNG" width="600"/></p>

# Correr el contenedor con la imagen creada

```
docker run -d roxsross12/pokepy-ejemplo:1.0

docker ps

```

<p align="center"><img src="../../assets/clase-4-lab-06-img6.PNG" width="600"/></p>

# Verificar logs para buscar ip publica utilizada

```
docker logs 2979a9b9d588
```

<p align="center"><img src="../../assets/clase-4-lab-06-img7.PNG" width="600"/></p>

# Hacer curl de verificacion de la aplicacion

```
curl 172.17.0.2:5000
```

<p align="center"><img src="../../assets/clase-4-lab-06-img8.PNG" width="600"/></p>
