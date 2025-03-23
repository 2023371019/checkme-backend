# Usa una imagen oficial de Node.js
FROM node:18

# Establece directorio de trabajo
WORKDIR /usr/src/app

# Copia las dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos del backend
COPY . .

# Expone el puerto que Cloud Run espera
EXPOSE 8080

# Comando para arrancar la app
CMD ["node", "server.js"]
