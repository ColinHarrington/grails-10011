# grails-10011
Docker Image which demonstrates https://github.com/grails/grails-core/issues/10011

Steps to reproduce:

* `git clone git@github.com:ColinHarrington/grails-10011.git && cd grails-10011`
* `docker build -t grails-10011 .`
* `docker run -it --rm grails-10011`
* `$ grails -version`  => Grails version: 2.5.5
* `grails create-app foo` => Observe the issue
