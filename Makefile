build:
	docker-compose build --no-cache

run:
	docker-compose up

pull:
	docker-compose pull

push:
	docker-compose push

clean:
	echo "y" | docker system prune -a

stop:
	docker stop `docker ps -aq` || echo "No Containers Running"

reset: stop clean pull run

upload: stop clean build push