#!/bin/bash

# This script is for updating the cloudformation stack

stack=cloudformation-jazz

function run {
  $1 || { echo "I've failed"; exit 1;}
}

function syncCloudfrontBase {
  printf "syncing cloudfront base...\n"
  aws s3 sync . "s3://cloudformation-base" --delete --exclude=".git/*"
}

function updateStack {
  printf "updating cloudformation stack...\n"
  aws cloudformation update-stack --stack-name $stack --template-body file://cloudformation.json --parameters ParameterKey=BucketNameParam,ParameterValue=$stack --capabilities CAPABILITY_IAM && \
    aws cloudformation wait stack-update-complete --stack-name $stack
}


run syncCloudfrontBase
updateStack

