# stop the server
docker compose stop

# remove all compiled files for frontend
rm -rf frontend/app/build
rm -rf frontend/app/.svelte-kit

# pull the latest changes
git pull

# start the server
docker compose start
