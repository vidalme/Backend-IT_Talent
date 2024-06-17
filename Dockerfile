FROM node:22-alpine
ENV APP_PORT=8080
WORKDIR app
COPY package.json .
RUN npm install
COPY . .

EXPOSE 8080
CMD ["npm", "start"]