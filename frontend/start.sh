#!/bin/sh

# Compile if the index.js file does not exist
if [ ! -f "/app/build/index.js" ]
then
    cd /app
    npm run build
    chmod -R 777 /app/build
    chmod -R 777 /app/.svelte-kit
fi

# Start the server
cd /app/build
node index.js