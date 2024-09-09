up:
	docker compose --env-file .env up  --build -d

down:
	docker compose --env-file .env down

sh: 
	docker exec -it docker_project-loader-1 bash

run-etl:
	docker exec docker_project-loader-1 python loader_script.py

warehouse:
	docker exec -it warehouse psql postgres://thierros:thierros@localhost:5432/warehouse