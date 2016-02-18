Example Dockerfile App
======================

This sample application shows how you can deploy Dockerfile-based
applications to Deis.

## Usage

```
$ deis create
Creating application... done, created verbal-inchworm
Git remote deis added
$ git push deis master
Counting objects: 50, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (48/48), done.
Writing objects: 100% (50/50), 7.36 KiB | 0 bytes/s, done.
Total 50 (delta 9), reused 0 (delta 0)

-----> Building Docker image
remote: Sending build context to Docker daemon 5.632 kB
Step 0 : FROM gliderlabs/alpine:3.3
3.3: Pulling from gliderlabs/alpine
07ced8d5b985: Pulling fs layer
07ced8d5b985: Verifying Checksum
07ced8d5b985: Download complete
07ced8d5b985: Pull complete
Digest: sha256:060856502ad9930f542bc9a02bd88eb6a4de6caade0c25d277da5f3d506154f6
Status: Downloaded newer image for gliderlabs/alpine:3.3
 ---> 07ced8d5b985
Step 1 : RUN apk-install python
 ---> Running in 8c44d14a0bde
fetch http://alpine.gliderlabs.com/alpine/v3.3/main/x86_64/APKINDEX.tar.gz
fetch http://alpine.gliderlabs.com/alpine/v3.3/community/x86_64/APKINDEX.tar.gz
(1/10) Installing libbz2 (1.0.6-r4)
(2/10) Installing expat (2.1.0-r2)
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
 ---> 8f9e0eee7505
Removing intermediate container 8c44d14a0bde
Step 2 : ADD . /app
 ---> ae19429aadb8
Removing intermediate container 227e08905dfa
Step 3 : WORKDIR /app
 ---> Running in 305c96c876a7
 ---> 1959fe212c27
Removing intermediate container 305c96c876a7
Step 4 : CMD python -m SimpleHTTPServer 5000
 ---> Running in 5a7954e829e4
 ---> 0f399a8d817b
Removing intermediate container 5a7954e829e4
Step 5 : EXPOSE 5000
 ---> Running in 481b0c8d7b17
 ---> 1ec8e1f757ad
Removing intermediate container 481b0c8d7b17
Step 6 : ENV GIT_SHA 89bb2984050799209f1255dfba94ccd50c74d793
 ---> Running in bfc5d7bab91a
 ---> d5a97e8aa740
Removing intermediate container bfc5d7bab91a
Successfully built d5a97e8aa740
-----> Pushing image to private registry

-----> Launching...
       done, verbal-inchworm:v2 deployed to Deis

       http://verbal-inchworm.local3.deisapp.com

       To learn more, use `deis help` or visit http://deis.io

To ssh://git@deis.local3.deisapp.com:2222/verbal-inchworm.git
 * [new branch]      master -> master
$ curl -sSL http://verbal-inchworm.local3.deisapp.com
<h1>Powered by Deis</h1>
```

## Additional Resources

* [Get Deis](http://deis.io/get-deis/)
* [GitHub Project](https://github.com/deis/deis)
* [Documentation](http://docs.deis.io/)
* [Blog](http://deis.io/blog/)
