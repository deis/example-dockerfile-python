Example Dockerfile Python App
=============================

This sample application shows how you can deploy Dockerfile-based
Python applications to Deis Workflow.

## Usage

```console
$ git clone https://github.com/deis/example-dockerfile-python
$ cd example-dockerfile-python
$ deis create
Creating Application... done, created actual-gatepost
Git remote deis added
remote available at ssh://git@deis-builder.deis.rocks:2222/actual-gatepost.git
$ git push deis master
Counting objects: 52, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (50/50), done.
Writing objects: 100% (52/52), 8.39 KiB | 0 bytes/s, done.
Total 52 (delta 11), reused 0 (delta 0)
Starting build... but first, coffee!
Step 1 : FROM gliderlabs/alpine:3.3
---> d63a2009a70a
Step 2 : RUN apk-install python
---> Running in 1a8f3db3fe08
fetch http://alpine.gliderlabs.com/alpine/v3.3/main/x86_64/APKINDEX.tar.gz
fetch http://alpine.gliderlabs.com/alpine/v3.3/community/x86_64/APKINDEX.tar.gz
(1/10) Installing libbz2 (1.0.6-r4)
(2/10) Installing expat (2.1.1-r0)
(3/10) Installing libffi (3.2.1-r2)
(4/10) Installing gdbm (1.11-r1)
(5/10) Installing ncurses-terminfo-base (6.0-r6)
(6/10) Installing ncurses-terminfo (6.0-r6)
(7/10) Installing ncurses-libs (6.0-r6)
(8/10) Installing readline (6.3.008-r4)
(9/10) Installing sqlite-libs (3.9.2-r0)
(10/10) Installing python (2.7.11-r3)
Executing busybox-1.24.1-r7.trigger
OK: 51 MiB in 21 packages
---> faabac892e5a
Removing intermediate container 1a8f3db3fe08
Step 3 : ADD . /app
---> ee020d4fe5b1
Removing intermediate container 80d14a5f4ee7
Step 4 : WORKDIR /app
---> Running in c2b4bfe2ffdd
---> 425e63270527
Removing intermediate container c2b4bfe2ffdd
Step 5 : CMD python -m SimpleHTTPServer 5000
---> Running in 6ed1a1f518a9
---> 0b5f37fc0221
Removing intermediate container 6ed1a1f518a9
Step 6 : EXPOSE 5000
---> Running in 8afc7f69d965
---> 94d4820f6ad8
Removing intermediate container 8afc7f69d965
Successfully built 94d4820f6ad8
Pushing to registry
Build complete.
Launching App...
Done, actual-gatepost:v2 deployed to Deis

Use 'deis open' to view this application in your browser

To learn more, use 'deis help' or visit https://deis.com/

To ssh://git@deis-builder.deis.rocks:2222/actual-gatepost.git
 * [new branch]      master -> master

$ curl http://actual-gatepost.deis.rocks
<h1>Powered by Deis</h1>
```

## Additional Resources

* [Get Deis](http://deis.io/get-deis/)
* [GitHub Project](https://github.com/deis/deis)
* [Documentation](http://docs.deis.io/)
* [Blog](http://deis.io/blog/)
