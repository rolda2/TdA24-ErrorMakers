FROM node:lts-alpine
WORKDIR /app
COPY . .
RUN npm install
RUN /bin/sh script.bash
CMD cd src/lib/api; /usr/local/go/bin/go run main.go
ENTRYPOINT npm run dev -- --host 0.0.0.0
EXPOSE 5173 5174 80 81