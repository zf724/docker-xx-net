FROM python:alpine

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

ADD https://github.com/xyuanmu/XX-Mini/releases/download/${VERSION}/XX-Mini_linux_darwin_v${VERSION}.zip .

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

ADD https://raw.githubusercontent.com/zf724/docker-xx-net/master/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE ${LISTEN_PORT} ${PAC_PORT}

ENTRYPOINT ["/entrypoint.sh"]
