define run_in_container
	echo "called with $1"
	docker cp $(1).sh $(IMAGE_NAME)_container:/$(1).sh
	docker exec $(IMAGE_NAME)_container /$(1).sh
endef

image:
	docker build . -t $(IMAGE_NAME) --build-arg UID=`id -u` --build-arg GID=`id -g`
	docker run -d -v `pwd`/..:/mnt --name $(IMAGE_NAME)_container $(IMAGE_NAME) sleep 360

clean:
	docker rm -f $(IMAGE_NAME)_container || true
	docker image rm -f $(IMAGE_NAME) || true

