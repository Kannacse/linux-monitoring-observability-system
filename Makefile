up:
	docker compose -f deploy/docker-compose.yml up -d

down:
	docker compose -f deploy/docker-compose.yml down

test:
	bash tests/smoke-test.sh

logs:
	tail -f logs/monitor.log

clean:
	rm -rf logs/*.log

build:
	docker build -t linux-monitor -f docker/Dockerfile .

deploy:
	bash deploy/deploy.sh
