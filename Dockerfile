FROM lwzm/ttyd

LABEL maintainer="lwzm@qq.com"

RUN apk add --no-cache lsof htop

COPY htoprc /root/.config/htop/htoprc

CMD [ "htop" ]
