# Tomado desde https://hub.docker.com/r/library/python/tags/
FROM python:slim-buster

# Crear archivo src/app en /usr
RUN mkdir /usr/src/app/

# Crear archivo src/consumer en /usr
RUN mkdir /usr/src/consumer/

# Copiar src/app al contenedor
COPY src/app /usr/src/app

# Copiar src/consumer al contenedor
COPY src/consumer /usr/src/consumer

RUN pip install flask

# Configurar el workdir
WORKDIR /usr/src/app

# Exponer el puerto 8000
EXPOSE 8000

# Comandos a llamar
CMD ["python", "app.py"]

