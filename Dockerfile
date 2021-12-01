FROM alpine:latest 

WORKDIR /app
COPY . ./
RUN chmod 777 /app/pluto.sh && mkdir /app/logi
VOLUME app/logi
COPY info.log /app/logi
ENTRYPOINT ["sh","pluto.sh"]
