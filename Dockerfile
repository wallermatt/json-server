FROM node:14 as builder

WORKDIR /app

COPY . .

RUN npm install -g json-server

EXPOSE 8080

ENTRYPOINT ["json-server","--port","8080","--watch","src/db.json","--routes","src/routes.json", "--host", "0.0.0.0"]
