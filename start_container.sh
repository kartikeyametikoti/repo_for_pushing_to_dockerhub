#!/bin/bash
set -e

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 491085395524.dkr.ecr.us-east-1.amazonaws.com
  
docker pull 491085395524.dkr.ecr.us-east-1.amazonaws.com/kartikeya1112/amma:latest

docker run -d -p 2000:5000 491085395524.dkr.ecr.us-east-1.amazonaws.com/kartikeya1112/amma 

