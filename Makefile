all:
	docker-compose -f srcs/docker-compose.yml up --build -d

cleanv:
	rm -rf /home/cyuuki/data/mariadb/*
	rm -rf /home/cyuuki/data/wordpress/*

fclean:
	docker-compose -f srcs/docker-compose.yml down
	docker rmi $(docker images -q)
	rm -rf /home/cyuuki/data/mariadb/*
	rm -rf /home/cyuuki/data/wordpress/*
	docker volume rm mariadb wordpress

stop:
	docker-compose -f srcs/docker-compose.yml stop mariadb wordpress nginx

start:
	docker-compose -f srcs/docker-compose.yml start mariadb wordpress nginx
