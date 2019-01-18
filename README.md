# My Blog
http://blog.auska.win

## Usage

```
docker create --name=opentracker \
-v <path to data>:/mnt \
-e PGID=<gid> -e PUID=<uid> \
-e TZ=<timezone> \
-e PORT=6666 \  #(port should be greater than 1024)
-p 6666:6666 \ 
-p 6666:6666/udp \
auska/docker-opentracker
```


### User / Group Identifiers

Sometimes when using data volumes (`-v` flags) permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

In this instance `PUID=1001` and `PGID=1001`. To find yours use `id user` as below:

```
  $ id <dockeruser>
    uid=1001(dockeruser) gid=1001(dockergroup) groups=1001(dockergroup)
```

## Versions

+ **0.0.1:** Rebase to alpine linux 3.8.

## Refferences
https://github.com/masroore/opentracker