# reagent-tutorial
Ejecución del tutorial de reagent con Clojure

Instala Docker
https://mcclone2001.github.io/blog/posts/tutorial-creacion-de-imagen-en-docker/

En una instancia de ``Docker Quickstart Terminal`` ejecuta

```
$ docker build ./ -t reagent-tutorial
$ docker run -it -p 3000:3000 -p 9630:9630 -p 3333:3333 reagent-tutorial
```

Quedaremos conectados al contenedor donde ejecutaremos

```
/tmp# export _JAVA_OPTIONS=-Xmx2g
/tmp# cd learn-reagent-course-files/giggin
/tmp/learn-reagent-course-files/giggin# npx shadow-cljs server
```

Esta ventana ahora esta ejecutando los servicios descritos por el archivo shadow-cljs.edn 

En una segunda instancia de ``Docker Quickstart Terminal`` ejecuta

```
docker ps -a
docker exec -ti <container id del contenedor creado en la otra ventana> bash
```

Quedaremos conectados al contenedor donde ahora ejecutaremos

```
/tmp# cd learn-reagent-course-files/giggin
/tmp/learn-reagent-course-files/giggin# npx shadow-cljs watch app
```

Esto deja ejecutando un demonio que estará pendiente de los cambios hechos a los archivos en la carpeta

/tmp/learn-reagent-course-files/giggin/src

y actualizará automaticamente tu navegador cuando estos archivos cambien