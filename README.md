Example Dockerfile App
======================

This sample application shows how you can deploy Dockerfile-based
applications to Deis.

## Usage

```
$ deis create
Creating application... done, created valued-yearbook
Git remote deis added
$ git push deis master
Counting objects: 35, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (26/26), done.
Writing objects: 100% (35/35), 4.55 KiB | 0 bytes/s, done.
Total 35 (delta 8), reused 31 (delta 7)
-----> Building Docker image
Uploading context 5.632 kB
Uploading context
Step 0 : FROM centos:latest
 ---> 0b443ba03958
Step 1 : MAINTAINER OpDemand <info@opdemand.com>
 ---> Using cache
 ---> 84d1fc9d7fdb
Step 2 : ADD . /app
 ---> 8a2ae43bfb50
Removing intermediate container 53693bf203de
Step 3 : WORKDIR /app
 ---> Running in a7740ec48b5d
 ---> cd97e9d93eca
Removing intermediate container a7740ec48b5d
Step 4 : CMD python -m SimpleHTTPServer 5000
 ---> Running in 5423a06c280d
 ---> ad92d46a2f46
Removing intermediate container 5423a06c280d
Step 5 : EXPOSE 5000
 ---> Running in f85ca4c16fbc
 ---> 38d5c240ce7f
Removing intermediate container f85ca4c16fbc
Successfully built 38d5c240ce7f
-----> Pushing image to private registry

       Launching... done, v2

-----> valued-yearbook deployed to Deis
       http://valued-yearbook.local.deisapp.com

       To learn more, use `deis help` or visit http://deis.io

To ssh://git@local.deisapp.com:2222/valued-yearbook.git
 * [new branch]      master -> master
$ curl http://valued-yearbook.local.deisapp.com/
<h1>Powered by Deis</h1>
```

## Additional Resources

* [Get Deis](http://deis.io/get-deis/)
* [GitHub Project](https://github.com/deis/deis)
* [Documentation](http://docs.deis.io/)
* [Blog](http://deis.io/blog/)
