FROM nginx:1.17.1-alpine
COPY nginx.conf /etc/nginx/nginx.conf
RUN cp -r dist /usr/share/nginx/html
RUN chgrp -R root /var/cache/nginx /var/run /var/log/nginx && \
    chmod -R 770 /var/cache/nginx /var/run /var/log/nginx
