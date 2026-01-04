FROM node:18-alpine
WORKDIR ./the
COPY ./package.json .
RUN npm install  
COPY . .
RUN npm run build
CMD [ "node", "dist/main.js" ]