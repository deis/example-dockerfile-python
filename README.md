Example Dockerfile App
======================

This sample application shows how you can deploy Dockerfile-based
applications to Deis.

## Usage

    $ deis create --formation=dev
    Creating application... done, created owlish-huntress
    Git remote deis added
    $ git push deis master
    Counting objects: 10, done.
    Delta compression using up to 8 threads.
    Compressing objects: 100% (9/9), done.
    Writing objects: 100% (10/10), 1.70 KiB | 0 bytes/s, done.
    Total 10 (delta 0), reused 0 (delta 0)
    -----> Building Docker image
    Uploading context 5.632 kB
    Uploading context
    Step 0 : FROM ubuntu:12.04
     ---> 9cd978db300e
    Step 1 : MAINTAINER OpDemand <info@opdemand.com>
     ---> Running in 9aefab8ad92c
     ---> da93d76703b7
    Step 2 : ENV PORT 8000
     ---> Running in 8ce25ddf4405
     ---> b6046ec54bb3
    Step 3 : ADD . /app
     ---> 5567f79d87fe
    Step 4 : WORKDIR /app
     ---> Running in 0b2c7906381c
     ---> 444006758e39
    Step 5 : CMD python -m SimpleHTTPServer $PORT
     ---> Running in b33074f3c0ea
     ---> 5a55b32b8da2
    Successfully built 5a55b32b8da2
    -----> Pushing image to private registry
    
           Launching... done, v2
    
    -----> owlish-huntress deployed to Deis
           http://owlish-huntress.example.com
    
           To learn more, use `deis help` or visit http://deis.io
    
    $ curl -s http://owlish-huntress.example.com
    <h1>Powered by Deis</h1>
