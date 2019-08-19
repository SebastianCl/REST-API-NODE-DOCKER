#VERSION DE NODEJS QUE NECESITA EL PROYECTO 
#Esta es otra imagen de Docker
FROM node:12

#CREAR UNA CARPETA DONDE ESTARA EL DIRECTORIO DE TRABAJO
WORKDIR /app

#COPIAR LOS ARCHIVOS QUE NECESITA EL SISTEMA PARA FUNCIONAR. 
#El ./ hacer referencia a /app
#El * indica copie cualquier archivo que empieze con package y termine en .json
COPY package*.json ./

RUN npm install

#COPIAR ARCHIVOS FUENTE
#Copiar todo (/*) en el directorio actual (/app)
COPY . .

#EJECUTAR UN COMANDO CON SUS PARAMETROS
CMD ["npm","start"]