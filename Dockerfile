FROM node:14 as builder

COPY . ./app

WORKDIR /app

RUN npm install -g json-server

EXPOSE 8080

CMD ["json-server", " --watch src/db.json ", " --routes src/routes.json ", " --port 8080 ", " --no-cors "]
