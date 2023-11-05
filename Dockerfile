FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN npm install
ENTRYPOINT npm run dev -- --host 0.0.0.0
EXPOSE 5173 80