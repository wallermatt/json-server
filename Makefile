image-build:
	@docker image build --rm -f ./Dockerfile -t json-server .

container-run:
	@docker container run  -p 8080:8080 -t json-server
