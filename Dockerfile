# Stage: Nginx per servire il sito statico
FROM nginx:alpine

# Rimuove la configurazione di default di Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copia la configurazione custom di Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia i file del sito nella directory di Nginx
COPY project/ /usr/share/nginx/html/

COPY nginx.conf /etc/nginx/conf.d/default.conf

# Espone la porta 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
