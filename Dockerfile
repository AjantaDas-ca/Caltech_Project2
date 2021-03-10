#stage 1: build and prepare the container environment
FROM  node:15.11.0-alpine AS builder
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
#RUN npm run build -- prod
EXPOSE 8080
CMD npm run start
LABEL Composed by ajanta


#stage 2 : run the container in the nginx web server

#FROM nginx:1.19.7-alpine
#COPY --from=builder /user/src/app/dist/angular-app/ /user/share/nginx/htmlc




