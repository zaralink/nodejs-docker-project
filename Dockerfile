FROM node:14-alpine

WORKDIR /app

COPY package.json package-lock.json* ./

RUN npm install --no-optional && npm cache clean --force

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
