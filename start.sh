#!/bin/sh

if [ "$USE_OWN_SERVER" = "false" ]; then
    echo "USE_OWN_SERVER is false. Copying server.jar to mapped volume..."
    cp /server/server.jar /app/
else
    echo "USE_OWN_SERVER is true. Skipping file copy."
fi

echo "Starting the Java application with Xms=${Xms} and Xmx=${Xmx}..."
exec java -Xms${Xms} -Xmx${Xmx} -jar /app/${SERVER_NAME} nogui