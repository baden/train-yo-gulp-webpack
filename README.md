
### Создать локальный docker-образ

```
    make
```

### Запустить локальный docker-образ

```
    make docker-test
```

Открыть в браузере ссылку: http://localhost:3000/

### Создать удаленный docker-образ

Имейте ввиду, что должна быть настроена [связка ключей] (https://github.com/baden/hetzner-px60-install/blob/master/Create_Server_Certificate.md).

```
    DOCKER_HOST=my.baden.work:2375 DOCKER_TLS_VERIFY=1 make
```

### Запустить удаленный docker-образ

Имейте ввиду, что должна быть настроена связка ключей.

```
    DOCKER_HOST=my.baden.work:2375 DOCKER_TLS_VERIFY=1 make docker-test
```

Открыть в браузере ссылку: http://my.baden.work:3000/

### Запустить образ из [докер-Хаба](https://hub.docker.com/r/baden/yo-gulp-webpack/)

Для запуска приложения, не нужно качать этот репозиторий.
Можно запустить обзар прямо из Хаба:

```
    docker run -p 3000:3000 -it --rm baden/yo-gulp-webpack:0.0.1
```

Запуск отсоединенного образа:

```
docker run -p 3000:3000 -d baden/yo-gulp-webpack:0.0.1
```
