FROM nginx:stable-alpine

RUN mkdir /app

COPY ./dist /app/dist/

COPY ./deploy/nginx/start.sh /app/start-nginx.sh
COPY ./deploy/nginx/nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT ["/app/start-nginx.sh"]
