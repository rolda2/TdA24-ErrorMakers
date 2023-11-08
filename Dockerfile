FROM alpine
COPY . /app
WORKDIR /app
RUN apk update && apk upgrade && apk add --update nodejs npm
EXPOSE 5173 5174 80 81
RUN npm install
RUN /bin/sh script.bash
CMD /bin/sh run.sh