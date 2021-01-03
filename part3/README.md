# Part 3

Solutions to exercises in part 3.

## 3.1

[Dockerfile Back-End](/part3/3.1/backend/Dockerfile)

- Size before optimization: `406MB`
- Size after optimization: `299MB`

[Dockerfile Front-End](/part3/3.1/frontend/Dockerfile)

- Size before optimization: `601MB`
- Size after optimization: `493MB`

## 3.2

[GitHub repository](https://github.com/nulldiego/docker-hy.github.io)

- [Updated Dockerfile](https://github.com/nulldiego/docker-hy.github.io/blob/master/Dockerfile) (nginx and port configuration)
- [nginx configuration](https://github.com/nulldiego/docker-hy.github.io/blob/master/nginx.conf)
- [CircleCI configuration](https://github.com/nulldiego/docker-hy.github.io/blob/master/.circleci/config.yml)

## 3.3

[Dockerfile](/part3/3.3/Dockerfile)

[Script](/part3/3.3/script.sh)

```bash
> docker build -t builder .
...
> docker run -it -v /var/run/docker.sock:/var/run/docker.sock builder
Builder - Repository:
https://github.com/nulldiego/docker-hy.github.io
Builder (1/4): Cloning...
Cloning into 'docker-hy.github.io'...
...
Builder - Docker Hub User:
diegosl
Builder - Docker Hub Password:
Builder (2/4): Logging in...
...
Builder (3/4): Building...
...
Builder (4/4): Pushing...
Using default tag: latest
The push refers to repository [docker.io/diegosl/docker-hy.github.io]
...
```

## 3.4

[Dockerfile Back-End](/part3/3.4/backend/Dockerfile)

[Dockerfile Front-End](/part3/3.4/frontend/Dockerfile)

## 3.5

[Dockerfile Back-End](/part3/3.5/backend/Dockerfile)

- Size before optimization: `299MB`
- Size after optimization: `129MB`

[Dockerfile Front-End](/part3/3.5/frontend/Dockerfile)

- Size before optimization: `494MB`
- Size after optimization: `327MB`

## 3.6

[Dockerfile](/part3/3.6/Dockerfile)

- Size before optimization: `327MB`
- Size after optimization: `120MB`

## 3.7

[Old Dockerfile](/part3/3.7/Dockerfile.old)

[Optimized Dockerfile](/part3/3.7/Dockerfile)

- Size before optimization: `599MB`
- Size after optimization: `121MB`

## 3.8

[Diagram](/part3/3.8/kubernetes.png)