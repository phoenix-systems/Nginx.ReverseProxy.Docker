FROM nginx:1.14.2
COPY content /var/www
COPY nginx.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]
