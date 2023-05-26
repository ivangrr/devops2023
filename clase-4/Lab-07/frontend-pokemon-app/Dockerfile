# Usa la imagen base de Node.js 14 o 16
FROM node:14

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