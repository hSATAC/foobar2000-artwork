FROM nginx

COPY index.html /usr/share/nginx/html
COPY icons /usr/share/nginx/html/icons
COPY placeholders /usr/share/nginx/html/placeholders

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
