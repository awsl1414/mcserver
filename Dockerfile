FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

COPY server.jar /server/
COPY start.sh /server/

ENV Xmx=8G \
    Xms=512M \
    SERVER_NAME=server.jar

RUN chmod +x /server/start.sh

CMD [ "/server/start.sh" ]

