FROM azul/zulu-openjdk-debian:21-jre-latest

WORKDIR /app

COPY server.jar /server/
COPY start.sh /server/

ENV Xmx=8G \
    Xms=512M \
    SERVER_NAME=server.jar \
    USE_OWN_SERVER=false

RUN chmod +x /server/start.sh

CMD [ "/server/start.sh" ]

