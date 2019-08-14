FROM alpine

MAINTAINER lwzm "lwzm@qq.com"

RUN apk add --no-cache lsof htop

CMD ["htop", "-d", "5"]
