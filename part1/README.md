# Part 1

Solutions to exercises in part 1.

## 1.1

```bash
> docker ps -a
CONTAINER ID        IMAGE               COMMAND                  CREATED              STATUS                      PORTS               NAMES
cb156c5a7794        nginx               "/docker-entrypoint.…"   About a minute ago   Exited (0) 27 seconds ago                       loving_raman
64277c1dd22a        nginx               "/docker-entrypoint.…"   About a minute ago   Exited (0) 15 seconds ago                       elastic_jang
b2fda18b8eb4        nginx               "/docker-entrypoint.…"   2 minutes ago        Up 2 minutes                80/tcp              wizardly_stonebraker
```

## 1.2

```bash
> docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES

> docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
```

## 1.3

```bash
> docker run -it devopsdockeruh/pull_exercise
Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"
```

## 1.4

```bash
> docker run -d devopsdockeruh/exec_bash_exercise
6f1b9b0c4b61bbe89c61bc84ef9d0e5499741076c93a961c97372dffb9e88c3e

> docker ps
CONTAINER ID        IMAGE                               COMMAND                  CREATED             STATUS              PORTS               NAMES
6f1b9b0c4b61        devopsdockeruh/exec_bash_exercise   "docker-entrypoint.s…"   12 seconds ago      Up 11 seconds                           tender_booth

> docker exec -it tender_booth bash
root@6f1b9b0c4b61:/usr/app# tail -f ./logs.txt
Wed, 14 Oct 2020 08:43:21 GMT
Secret message is:
"Docker is easy"
```

## 1.5

```bash
> docker run -d --rm -it --name curler ubuntu:16.04 sh -c 'echo "Website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
f93582084b05e68b0ff7e63e40e99c10ce37b8013667ddd049d5fb3574c0ee4c

> docker exec -it curler bash
root@f93582084b05:/# apt update && apt install curl
...
root@f93582084b05:/# exit

> docker attach curler
helsinki.fi
Searching..
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>301 Moved Permanently</title>
</head><body>
<h1>Moved Permanently</h1>
<p>The document has moved <a href="http://www.helsinki.fi/">here</a>.</p>
</body></html>
```

## 1.6

[Dockerfile](/part1/1.6/Dockerfile)

```bash
> docker build -t docker-clock .

> docker run docker-clock
```

## 1.7

[Dockerfile](/part1/1.7/Dockerfile)

[Script](/part1/1.7/script.sh)

```bash
> docker build -t curler .

> docker run --rm -it curler
Input website:
helsinki.fi
Searching..
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>301 Moved Permanently</title>
</head><body>
<h1>Moved Permanently</h1>
<p>The document has moved <a href="http://www.helsinki.fi/">here</a>.</p>
</body></html>
```

## 1.8

```bash
> echo $null > logs.txt

> docker run -v ${pwd}/logs.txt:/usr/app/logs.txt devopsdockeruh/first_volume_exercise

> type logs.txt
Thu, 15 Oct 2020 09:17:30 GMT
Thu, 15 Oct 2020 09:17:33 GMT
Thu, 15 Oct 2020 09:17:36 GMT
Thu, 15 Oct 2020 09:17:39 GMT
Secret message is:
"Volume bind mount is easy"
```

## 1.9

```bash
> docker run -p 80:80 devopsdockeruh/ports_exercise

> curl http://localhost:80
StatusCode        : 200
StatusDescription : OK
Content           : Ports configured correctly!!
RawContent        : HTTP/1.1 200 OK
                    Connection: keep-alive
                    Content-Length: 28
                    Content-Type: text/html; charset=utf-8
                    Date: Thu, 15 Oct 2020 09:38:40 GMT
                    ETag: W/"1c-FlnMl0kiaW1T7+FukN6N5hGQtKM"
                    X-Powered-By: Expres...
Forms             : {}
Headers           : {[Connection, keep-alive], [Content-Length, 28], [Content-Type, text/html; charset=utf-8], [Date,
                    Thu, 15 Oct 2020 09:38:40 GMT]...}
Images            : {}
InputFields       : {}
Links             : {}
ParsedHtml        : System.__ComObject
RawContentLength  : 28
```

## 1.10

[Dockerfile](/part1/1.10/Dockerfile)

```bash
> docker build -t frontend .

> docker run -d -p 5000:5000 frontend
```

## 1.11

[Dockerfile](/part1/1.11/Dockerfile)

```bash
> docker build -t backend .

> echo $null > logs.txt

> docker run -d -v ${pwd}/logs.txt:/web/backend-example-docker/logs.txt -p 8000:8000 backend
```

## 1.12

[Dockerfile Back-End](/part1/1.12/backend/Dockerfile)

[Dockerfile Front-End](/part1/1.12/frontend/Dockerfile)

```bash
> cd .\frontend\

> docker build -t frontend .

> docker run -d -p 5000:5000 frontend

> cd ..\backend\

> docker build -t backend .

> echo $null > logs.txt

> docker run -d -v ${pwd}/logs.txt:/web/backend-example-docker/logs.txt -p 8000:8000 backend
```

## 1.13

[Dockerfile](/part1/1.13/Dockerfile)

```bash
> docker build -t spring .

> docker run -d -p 8080:8080 spring
```

## 1.14

[Dockerfile](/part1/1.14/Dockerfile)

```bash
> docker build -t ruby .

> docker run -d -p 3000:3000 ruby
```

## 1.15

[Github Project](https://github.com/nulldiego/gmfix)

[Dockerfile](/part1/1.15/Dockerfile)

```bash
> docker build -t gmfix .

> docker run -d -p 8000:8000 gmfix

> docker tag gmfix diegosl/gmfix

> docker push diegosl/gmfix
```

[Docker Hub](https://hub.docker.com/r/diegosl/gmfix)

## 1.16

```bash
> docker pull devopsdockeruh/heroku-example

> docker tag devopsdockeruh/heroku-example registry.heroku.com/docker-devops-course/web

> docker push registry.heroku.com/docker-devops-course/web

> heroku container:release web -a docker-devops-course
```

[Heroku application](https://docker-devops-course.herokuapp.com/)

## 1.17

Chosen programming environment: Scala.

[Dockerfile](/part1/1.17/Dockerfile)

```bash
> docker build -t scala .

> docker run -it scala

> docker tag scala diegosl/scala

> docker push diegosl/scala
```

[Docker Hub](https://hub.docker.com/r/diegosl/scala)