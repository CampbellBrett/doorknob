############################
# Final container
############################
FROM registry.cto.ai/official_images/node:2-12.13.1-stretch-slim

WORKDIR /ops

ADD . .

RUN npm install
RUN chown -R ops:9999 /ops /home/ops
