FROM node:18-alpine
ARG MONGODB_URI=mongodb://localhost:27017//zoodcode-duck-spawner
COPY ./package.json .
RUN npm install  
COPY . .
RUN npm run build
CMD [ "node", "dist/main.js" ]