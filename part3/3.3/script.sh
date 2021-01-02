#!/bin/sh

echo "Builder - Repository:"
read repository

echo "Builder (1/4): Cloning..."
git clone $repository

PROJECT=$(echo $repository | cut -d'/' -f 5)

cd $PROJECT

echo 'Builder - Docker Hub User:'
read user

echo 'Builder - Docker Hub Password':
read -s password

echo "Builder (2/4): Logging in..."
docker login -u=$user -p=$password


echo "Builder (3/4): Building..."
docker build -t $user/$PROJECT .

echo "Builder (4/4): Pushing..."
docker push $user/$PROJECT