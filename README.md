## letsencrypt.pkg

[Let's encrypt](https://letsencrypt.org) package for Debian (wheezy, jessie) and Ubuntu (precise, trusty).

### How to use

Open [letsencrypt package page](http://software.opensuse.org/download.html?project=home:antonbatenev:letsencrypt&package=letsencrypt), choose your distro, follow instructions, enjoy!

Since version 0.8.0 `letsencrypt` renamed to `certbot`. For certbot use [certbot package page](http://software.opensuse.org/download.html?project=home:antonbatenev:letsencrypt&package=certbot).

### How to build

Build requirements:

* [dh-virtualenv](https://build.opensuse.org/package/show/home:antonbatenev:letsencrypt/dh-virtualenv)
* python-dev
* libffi-dev
* libssl-dev
* ca-certificates

To build binary package:

```
$ cd letsencrypt
$ debuild
$ debuild clean
```

To build source package you have to build binary package first - it deploy additional sources to `pip` directory:

```
$ cd letsencrypt
$ debuild -S
$ debuild clean
```

To rebuild source package with new sources you have to clean `pip` directory and build binary package again.
