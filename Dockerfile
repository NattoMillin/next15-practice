FROM node:20.13.1-slim

# pnpmのインストール
RUN npm install -g pnpm

WORKDIR /workspace/application/myapp

RUN apt-get update && apt-get install -y sudo && \
    echo "node ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# RUN chown -R node:node /workspace/application/myapp

USER node
