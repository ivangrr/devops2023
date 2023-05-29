# Tomado desde https://hub.docker.com/r/library/python/tags/
FROM python:3.8

# Crear archivo src/app en /usr
RUN mkdir /usr/src/app/

# Copiar app.py al contenedor
COPY app.py /usr/src/app

COPY templates/ /usr/src/app/templates

COPY pokeapi.py /usr/src/app

COPY requirements.txt /usr/src/app

# Configurar el workdir
WORKDIR /usr/src/app

RUN pip install -r requirements.txt

EXPOSE 5000

# Comandos a llamar
CMD ["python", "app.py"]