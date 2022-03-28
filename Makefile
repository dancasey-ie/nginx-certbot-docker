build_up:
	docker-compose build && docker-compose up -d --remove-orphans

up:
	docker-compose up -d --remove-orphans

down:
	docker-compose down --remove-orphans

build_up_http:
	docker-compose -f compose-http.yml build --no-cache && docker-compose -f compose-http.yml up --remove-orphans

up_http:
	docker-compose -f compose-http.yml up --remove-orphans

down_http:
	docker-compose -f compose-http.yml down --remove-orphans

init_ssl:
	docker-compose -f compose-init-ssl.yml build --no-cache && docker-compose -f compose-init-ssl.yml up 

build_up_https:
	docker-compose -f compose-https.yml build --no-cache && docker-compose -f compose-https.yml up

up_https:
	docker-compose -f compose-https.yml up -d

down_https:
	docker-compose -f compose-https.yml down --remove-orphans

logs:
	docker-compose logs --tail=100 -f
