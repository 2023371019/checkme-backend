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

# Copia el archivo .env (necesario para variables como MONGO_URI)
COPY .env .env

# Define el puerto que usará la app dentro del contenedor
ENV PORT=8080
EXPOSE 8080

# Comando para ejecutar el servidor
CMD ["node", "server.js"]
