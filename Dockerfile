FROM node:20-alpine AS build

FROM jpillora/chisel:latest AS chisel

FROM node:20-alpine
RUN apk add --no-cache nginx curl supervisor
COPY --from=chisel /app/chisel /usr/local/bin/chisel

COPY supervisord.conf /etc/supervisord.conf
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
