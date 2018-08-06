FROM resin/raspberrypi3-node:8
ENV EG_VERSION="1.10.2"
ENV NODE_ENV="production"
ENV CHOKIDAR_USEPOLLING true

RUN [ "cross-build-start" ]

RUN npm install -g express-gateway@$EG_VERSION

RUN [ "cross-build-end" ]

CMD eg --version
