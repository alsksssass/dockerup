all :
	mkdir -p /home/sabyun/code_data
	docker compose -f srcs/docker-compose.yml up -d

clean :
	docker compose -f srcs/docker-compose.yml down

fclean :
	docker compose -f srcs/docker-compose.yml down --volumes --rmi all
	rm -rf /home/sabyun/code_data
