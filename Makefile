list:
	@docker image ls

down:
	@docker-compose down

delete-image:
	@docker image rm omeka

up:
	@docker-compose up

reset: down delete-image up
