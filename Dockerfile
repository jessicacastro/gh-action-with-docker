FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS clusterprincipal.ytqvyfz.mongodb.net
ENV MONGODB_USERNAME jessicacastro
ENV MONGODB_PASSWORD bJ0HcOhX6Mrp7HGx

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]