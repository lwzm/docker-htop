FROM tsl0922/ttyd:alpine as ttyd

FROM alpine

LABEL maintainer="lwzm@qq.com"

RUN apk add --no-cache lsof htop
COPY htoprc /root/.config/htop/htoprc
COPY entrypoint.sh /bin/
COPY --from=ttyd /usr/bin/ttyd /bin/

EXPOSE 80

ENTRYPOINT [ "entrypoint.sh" ]
CMD [ "htop" ]
