FROM resin/raspberrypi3-node:8
ENV EG_VERSION="1.10.2"

RUN [ "cross-build-start" ]

RUN npm install -g express-gateway@$EG_VERSION

RUN [ "cross-build-end" ]

CMD eg --version
