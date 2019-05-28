FROM openjdk
WORKDIR /srv
COPY bin/minecraft_server.1.14.2.jar .
COPY start.sh .
COPY defaults defaults
WORKDIR /data
EXPOSE 25565
VOLUME /data
CMD /srv/start.sh
