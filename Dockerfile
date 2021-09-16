############################
# Final container
############################
FROM registry.cto.ai/official_images/node:2-12.13.1-stretch-slim

WORKDIR /ops

BLAH

RUN npm install fastify
RUN npm install fastify-plugin
RUN npm install fastify-cli
RUN npm install	fastify-autoload

ADD . .
RUN chown -R ops:9999 /ops /home/ops
