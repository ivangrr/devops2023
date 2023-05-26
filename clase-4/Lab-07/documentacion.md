# Documentación del Lab-07
---

## Dockerfile Frontend y Backend

### Backend:

Procedemos a crear el archivo Dockerfile dentro de la carpeta backend-pokemon-app

```
cd backend-pokemon-app
nano Dockerfile
```
Dentro del Dockerfile escribir lo siguiente
```
# Usa la imagen base de Python 3.8
FROM python:3.8

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requisitos al directorio de trabajo
COPY requirements.txt .

# Instala las dependencias del proyecto
RUN pip install --no-cache-dir -r requirements.txt

# Copia el código fuente del proyecto al directorio de trabajo
COPY . .

# Expone el puerto si tu aplicación lo requiere
EXPOSE 8000

# Comando por defecto para ejecutar la aplicación
CMD [ "python", "main.py" ]

```
Guardar cambios 

![](assets/9.png)

### Frontend:

Procedemos a crear el archivo Dockerfile dentro de la carpeta backend-pokemon-app

```
cd frontend-pokemon-app
nano Dockerfile
```
Dentro del Dockerfile escribir lo siguiente

```
# Usa la imagen base de Node.js 16
FROM node:16

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia el código fuente de la aplicación al directorio de trabajo
COPY . .

# Compila la aplicación de React para producción
RUN npm run build

# Expone el puerto en el que se ejecuta la aplicación (normalmente 3000)
EXPOSE 3000

# Comando por defecto para ejecutar la aplicación
CMD [ "npm", "start" ]

```
Guardar cambios 

![](assets/10.png)


## Subir la Imagen del Frontend y Backend al Registry Docker Hub con versionado

![](assets/d2.png)

![](assets/d1.png)

## Docker-compose

```
version: '3'

services:
  backend:
    image: backend_pokemon:1.0.0
    ports:
      - 8000:8000

  frontend:
    image: frontend_pokemon:1.0.0
    ports:
      - 3000:3000

```

