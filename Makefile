all :
	mkdir -p /home/sabyun/data/wordpress
	mkdir -p /home/sabyun/data/mariadb
	docker compose -f srcs/docker-compose.yml up -d

clean :
	docker compose -f srcs/docker-compose.yml down

fclean :
	docker compose -f srcs/docker-compose.yml down --volumes --rmi all
	rm -rf /home/sabyun/data
