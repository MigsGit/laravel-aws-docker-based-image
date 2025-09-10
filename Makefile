auth: 
    aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 539247472620.dkr.ecr.us-east-1.amazonaws.com

build:
   docker build -t aws-db-images-8-3-4 .

push:
   docker tag aws-db-images-8-3-4:latest 539247472620.dkr.ecr.us-east-1.amazonaws.com/aws-db-images-8-3-4:latest
   docker push 539247472620.dkr.ecr.us-east-1.amazonaws.com/aws-db-images-8-3-4:latest

build-push:
    make build
    make push
