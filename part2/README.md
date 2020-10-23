# Part 2

Solutions to exercises in part 2.

## 2.1

[docker-compose.yml](/part2/2.1/docker-compose.yml)

```bash
> echo $null > logs.txt

> docker-compose up
```

## 2.2

[docker-compose.yml](/part2/2.2/docker-compose.yml)

```bash
> docker-compose up
```

## 2.3

[docker-compose.yml](/part2/2.3/docker-compose.yml)

```bash
> docker-compose up
```

## 2.4

```bash
> git clone https://github.com/docker-hy/scaling-exercise.git

> cd scaling-exercise

> docker-compose up --scale compute=5
```

## 2.5

[docker-compose.yml](/part2/2.5/docker-compose.yml)

```bash
> docker-compose up
```

## 2.6

[docker-compose.yml](/part2/2.6/docker-compose.yml)

```bash
> docker-compose up
```

## 2.7

[docker-compose.yml](/part2/2.7/docker-compose.yml)

```bash
> docker-compose up
```

## 2.8

[docker-compose.yml](/part2/2.8/docker-compose.yml)

[nginx.conf](/part2/2.8/nginx.conf)

```bash
> docker-compose up
```

## 2.9

[docker-compose.yml](/part2/2.9/docker-compose.yml)

Directly mounting a host directory for `/var/lib/postgresql/data` doesn't work on Windows, so I created an external docker volume to persist the database.

```bash
> docker volume create --name=pgdata

> docker-compose up
```

## 2.10

[docker-compose.yml](/part2/2.10/docker-compose.yml)

[nginx.conf](/part2/2.10/nginx.conf)

I had to define the environment variable `FRONT_URL` for `backend` container.

```bash
> docker-compose up
```