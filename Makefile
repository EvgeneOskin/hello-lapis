build:
	docker build -t hello-lapis .

up:
	docker run -ti -p 8080:8080 hello-lapis
