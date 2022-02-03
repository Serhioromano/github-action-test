FROM alpine:3.15

RUN apk add --no-cache bash
RUN apk add --update nodejs npm 
RUN npm install -g vsce@$npm_version

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]



