default:
	dpkg-deb --build medshakeehr
	docker build -t debmsehr:latest .
	docker run 	-ti debmsehr:latest

clean:
	rm medshakeehr.dpkg