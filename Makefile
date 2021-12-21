list:
	@docker image ls

down:
	@docker-compose down

delete-image:
	@docker image rm omeka

up:
	@docker-compose up

stop:
	@docker-compose stop

copy-config:
	@docker cp ./config.ini archivos-del-sur_omeka_1:/var/www/html/application/config/config.ini

reset: down delete-image up copy-config stop up
