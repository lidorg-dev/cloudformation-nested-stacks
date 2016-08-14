#!/bin/bash
stack=cloudformation-jazz

function run {
  $1 || { echo "I've failed"; exit 1;}
}

function syncBucket {
  printf "syncing...\n"
  aws s3 sync ./public "s3://${stack}" --delete
}

run syncBucket
