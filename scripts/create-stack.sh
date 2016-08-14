#!/bin/bash
stack=cloudformation-jazz

aws cloudformation create-stack --stack-name $stack --template-body file://cloudformation.json --parameters ParameterKey=BucketNameParam,ParameterValue=$stack --capabilities CAPABILITY_IAM && \
  aws cloudformation wait stack-create-complete --stack-name $stack
