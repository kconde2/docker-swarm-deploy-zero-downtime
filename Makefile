REGISTRY_URL=localhost:5000

registry:
	docker run -d -p 5000:5000 --name registry registry:2
build:
	docker build -t docker-zero-downtime-deployment .
tag:
	docker tag docker-zero-downtime-deployment ${REGISTRY_URL}/docker-zero-downtime-deployment
push:
	docker push ${REGISTRY_URL}/docker-zero-downtime-deployment
deploy:
	docker stack deploy -c docker-compose.yml docker-zero
monitor:
	docker ps
