
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

Имейте ввиду, что должна быть настроена связка ключей.

```
    DOCKER_HOST=148.251.183.85:2375 make
```

### Запустить удаленный docker-образ

Имейте ввиду, что должна быть настроена связка ключей.

```
    DOCKER_HOST=148.251.183.85:2375 make docker-test
```

Открыть в браузере ссылку: http://my.baden.work:3000/

### Запустить образ из докер-Хаба: ()

```
    docker run -p 3000:3000 -it --rm baden/yo-gulp-webpack:0.0.1
```