FROM nginx

COPY index.html /usr/share/nginx/html
COPY icons /usr/share/nginx/html
COPY placeholders /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
