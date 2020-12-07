tf-build:
	docker build -t aws-codebuild:latest-tfonly -f Dockerfile-tfonly .
node-build:
	docker build -t aws-codebuild:latest-node -f Dockerfile-node .
python-build:
	docker build -t aws-codebuild:latest-python -f Dockerfile-python .
ruby-build:
	docker build -t aws-codebuild:latest-ruby -f Dockerfile-ruby .
go-build:
	docker build -t aws-codebuild:latest-go -f Dockerfile-go .

build: tf-build node-build python-build ruby-build go-build
	echo done
