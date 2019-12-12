build:
	docker build -t foobar2k-artwork .

stop:
	docker stop foobar2k-artwork

run:
	docker run --rm --name foobar2k-artwork -p 8080:80 -d foobar2k-artwork
