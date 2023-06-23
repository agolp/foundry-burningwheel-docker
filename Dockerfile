FROM node:19-alpine

ENV UID=1000
ENV GID=1000

RUN deluser --remove-home node && \
    addgroup -g $GID foundry && \
    adduser -u $UID -G foundry -D foundry

USER foundry

RUN mkdir -p /home/foundry/data
VOLUME /home/foundry/data

RUN mkdir -p /home/foundry/data/Data/systems/burningwheel
VOLUME /home/foundry/data/Data/systems/burningwheel

WORKDIR /home/foundry/app
VOLUME /home/foundry/app

CMD ["node", "./resources/app/main.js", "--headless", "--dataPath=/home/foundry/data" ]
