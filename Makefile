VERSION='0.1'

image:
	docker build -t centos7dbg:${VERSION} .

push: image
	docker tag  centos7dbg:${VERSION} mighq/centos7dbg:${VERSION}
	docker push mighq/centos7dbg:${VERSION}
