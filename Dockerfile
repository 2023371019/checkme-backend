# Usa una imagen oficial de Node.js como base
FROM node:18

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia los archivos de dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de la aplicación
COPY . .

# Expone el puerto usado por la app (Cloud Run usará $PORT)
ENV PORT=8080
EXPOSE 8080

# Ejecuta el servidor
CMD ["node", "server.js"]
