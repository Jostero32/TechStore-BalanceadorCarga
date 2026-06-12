FROM nginx:alpine

# nginx:alpine procesa automáticamente /etc/nginx/templates/*.template con
# envsubst al iniciar (docker-entrypoint.d/20-envsubst-on-templates.sh),
# usando las variables de entorno del contenedor (RENDER_API_1/RENDER_API_2,
# definidas en Render -> Environment). No se necesita CMD/ENTRYPOINT propio.
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

EXPOSE 80
