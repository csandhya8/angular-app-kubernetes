# stage 1
FROM node:8
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod

# stage 2
FROM nginx:alpine
COPY /app/dist/angular-app /usr/share/nginx/html
