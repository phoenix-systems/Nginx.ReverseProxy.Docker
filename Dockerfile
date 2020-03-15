FROM nginx:alpine
COPY nginx.tmpl /etc/nginx/conf.d/default.tmpl
CMD sh -c "envsubst \"`env | awk -F = '{printf \" \\\\$%s\", $1}'`\" < /etc/nginx/conf.d/default.tmpl > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
