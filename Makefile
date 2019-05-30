IMAGE := mihalea/portfolio

image:
	npm install
	npm build
	docker build -t $(IMAGE) .

publish:
	docker push $(IMAGE)
