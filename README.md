Aplicación de NODEJS ejecutada en una imagen de Docker

CREAR IMAGEN DEL PROYECTO:
dar un nombre a la imagen -t
indicar que arhivos va a tener el contenedor: . (obtiene todo desde la raiz)

docker build -t node-restapi .


EJECUTAR APP EN DOCKER : 
docker run -p 4000:3000 node-restapi

EJECUTAR COMO UN PROCESO: 
docker run -d -p 4000:3000 node-restapi