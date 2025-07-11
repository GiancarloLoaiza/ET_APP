# Usar imagen base oficial de NGINX
FROM nginx:alpine

# Crear una carpeta personalizada dentro del contenedor (opcional)
RUN mkdir -p /usr/share/nginx/html/app

# Copiar nuestro index.html personalizado al contenedor, en una ruta específica
COPY html/index.html /usr/share/nginx/html/app/index.html

# Sobrescribir el archivo por defecto para que apunte al nuevo index
COPY html/index.html /usr/share/nginx/html/index.html

# Exponer el puerto 80
EXPOSE 80
