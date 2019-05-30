IMAGE := mihalea/portfolio

build:
	npm install
	npm build
	docker build -t $(IMAGE) .

publish:
	docker push $(IMAGE)