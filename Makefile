# Variables to define the container path
docker_image_name = omeka
current_dir = $(notdir $(shell pwd))
container_name := $(current_dir)_$(docker_image_name)_1
container_path_to_copy_config_file = $(addprefix $(container_name),:/var/www/html/application/config/config.ini)


# Help commands

list:
	@docker image ls

down:
	@docker-compose down

delete-image:
	@docker image rm $(docker_image_name)

up:
	@docker-compose up

stop:
	@docker-compose stop

copy-config:
	@docker cp ./config.ini $(container_path_to_copy_config_file)


# Build and spanish config 
build-config: up copy-config 

# Re-build and spanish config
rebuild-docker-image: down delete-image up copy-config 
