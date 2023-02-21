DOCKER_USERNAME = poldrack
NB_NAME = datascience-notebook

build-book:
	-rm -rf src/_build
	jupyter-book build src



# commands for building and testing docker image

# add -p 8888:8888 for jupyter
shell: 
	sudo docker run -it  -e GRANT_SUDO=yes --entrypoint=bash -v $(current_dir):/home/jovyan/work/nb:rw $(DOCKER_USERNAME)/${NB_NAME}

jupyter: 
	sudo docker-compose up
