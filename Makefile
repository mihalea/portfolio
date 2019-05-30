IMAGE := mihalea/portfolio

image:
	yarn
	yarn build
	docker build -t $(IMAGE) .

publish:
	docker push $(IMAGE)
