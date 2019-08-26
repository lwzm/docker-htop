FROM alpine

LABEL maintainer="lwzm@qq.com"


RUN apk add --no-cache lsof htop

CMD htop -d5
