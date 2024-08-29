#!/bin/bash
set -e

echo "Building image"

docker build \
       --file Dockerfile \
       --build-arg RAILS_MASTER_KEY=$RAILS_MASTER_KEY \
       -t beckett-data-api \
       .

echo "Logging in to AWS"
aws ecr get-login-password --region us-east-1 | \
docker login --username AWS --password-stdin "${AWS_ECR}"
echo "Logged in successfully"

echo "Tagging image with latest"
docker tag beckett-data-api "${AWS_ECR}/beckett-data-api:latest"

echo "Pushing image"
docker push "${AWS_ECR}/beckett-data-api:latest"

echo "Force update service"
# aws ecs update-service --cluster ${AWS_ECS_CLUSTER} --service ${AWS_ECS_SERVICE} --force-new-deployment --region ${AWS_REGION}