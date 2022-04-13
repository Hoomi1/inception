all:
	docker-compose -f srcs/docker-compose.yml up --build -d

cleanv:
	sudo rm -rf /home/cyuuki/data/mariadb/*
	sudo rm -rf /home/cyuuki/data/wordpress/*
	sudo rm -rf /home/cyuuki/data/portainer/*

cleand:
	docker-compose -f srcs/docker-compose.yml down
	docker volume rm $$(docker volume ls -q)
	sudo rm -rf /home/cyuuki/data/mariadb/*
	sudo rm -rf /home/cyuuki/data/wordpress/*
	sudo rm -rf /home/cyuuki/data/portainer/*

fclean:
	docker-compose -f srcs/docker-compose.yml down
	docker image prune --all
	sudo rm -rf /home/cyuuki/data/mariadb/*
	sudo rm -rf /home/cyuuki/data/wordpress/*
	sudo rm -rf /home/cyuuki/data/portainer/*
	docker volume rm $$(docker volume ls -q)

stop:
	docker-compose -f srcs/docker-compose.yml stop mariadb wordpress nginx

start:
	docker-compose -f srcs/docker-compose.yml start mariadb wordpress nginx

.PHONY: stop cleanv cleand all start fclean