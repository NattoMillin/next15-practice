FROM node:20.13.1-slim

# pnpmのインストール
RUN npm install -g pnpm

WORKDIR /home/node/dev

RUN apt-get update && apt-get install -y sudo && \
    echo "node ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN chown -R node:node /home/node/dev

USER node
