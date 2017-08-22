FROM python:2

ENV VERSION 1.3.1

ENV LISTEN_IP 0.0.0.0
ENV LISTEN_PORT 8087
ENV LISTEN_USERNAME none
ENV LISTEN_PASSWORD none
ENV GAE_APPID none
ENV GAE_PASSWORD none
ENV PAC_ENABLE 1
ENV PAC_IP 0.0.0.0
ENV PAC_PORT 8086
ENV PROXY_ENABLE 0
ENV PROXY_TYPE HTTP
ENV PROXY_HOST 127.0.0.1
ENV PROXY_PORT 8888
ENV PROXY_USER none
ENV PROXY_PASSWD none
ENV SYSTEM_LOG_FILE 0

WORKDIR /usr/src/app

ADD https://github.com/xyuanmu/XX-Mini/releases/download/${VERSION}/XX-Mini_linux_darwin_v${VERSION}.zip .
#ADD XX-Mini_linux_darwin_v${VERSION}.zip .

RUN set -xe \
    && apt-get update \
    && apt-get install unzip

RUN set -xe \
    && unzip XX-Mini_linux_darwin_v${VERSION}.zip \
    && rm XX-Mini_linux_darwin_v${VERSION}.zip

RUN pip install --no-cache-dir pyopenssl

ADD https://raw.githubusercontent.com/zf724/docker-xx-net/master/entrypoint.sh /entrypoint.sh
#ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE ${LISTEN_PORT} ${PAC_PORT}

ENTRYPOINT ["/entrypoint.sh"]
#ENTRYPOINT ["/bin/sh"]
