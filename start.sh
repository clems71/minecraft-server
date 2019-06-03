echo "eula=true" > eula.txt

if [ -n "$MINECRAFT_OPS_JSON" ]
then
    echo "$MINECRAFT_OPS_JSON" > ./ops.json
fi

if [ -n "$MINECRAFT_WHITELIST_JSON" ]
then
    echo "$MINECRAFT_WHITELIST_JSON" > ./whitelist.json
fi

if [ -z "$MINECRAFT_SERVER_PROPS" ]
then
    cp /srv/defaults/server.properties .
else
    echo "$MINECRAFT_SERVER_PROPS" > ./server.properties
fi

java -Xmx1024M -Xms1024M -jar /srv/minecraft_server.1.14.2.jar nogui
