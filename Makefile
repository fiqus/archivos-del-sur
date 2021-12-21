current_dir = $(notdir $(shell pwd))
addres_to_copy_the_lan_config = $(addprefix $(current_dir),_omeka_1:/var/www/html/application/config/config.ini)

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
	@docker cp ./config.ini $(addres_to_copy_the_lan_config)

reset: down delete-image up copy-config stop up
