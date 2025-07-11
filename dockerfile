FROM nginx:alpine

# Elimina el contenido HTML por defecto
RUN rm -rf /usr/share/nginx/html/*

# Copia nuestro index.html personalizado
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
