FROM node:13-alpine AS builder
WORKDIR /usr/src/app
COPY strangescout-frontend/package*.json ./
RUN npm install
COPY ./strangescout-frontend .
RUN npm run build

FROM node:13-alpine
WORKDIR /usr/src/app
COPY strangescout-api/package*.json ./
RUN npm install
COPY --from=builder /usr/src/app/build ./static
COPY ./entrypoint.sh ./
COPY ./strangescout-api .
EXPOSE 80
CMD [ "sh", "./entrypoint.sh" ]