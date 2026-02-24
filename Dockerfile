FROM node:22-slim

RUN apt-get update && apt-get install -y curl git && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN npm install -g openclaw@latest

WORKDIR /app

EXPOSE 18789

CMD ["openclaw","gateway","run","--bind","lan","--port","18789","--allow-unconfigured"]
