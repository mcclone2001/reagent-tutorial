# reagent-tutorial
Ejecución del tutorial de reagent


Instalar Docker
https://mcclone2001.github.io/blog/posts/tutorial-creacion-de-imagen-en-docker/

```
$ docker build ./ -t reagent-tutorial
$ docker run -it -p 3000:3000 -p 9630:9630 -p 3333:3333 reagent-tutorial
```