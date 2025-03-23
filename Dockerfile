# Usa una imagen oficial de Node.js como base
FROM node:18

# Crea el directorio de trabajo
WORKDIR /usr/src/app

# Copia los archivos de dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de la app
COPY . .

# Expone el puerto 8080 que usará Cloud Run
EXPOSE 8080

# Comando para ejecutar el servidor
CMD ["node", "server.js"]
