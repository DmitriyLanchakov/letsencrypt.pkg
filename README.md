## letsencrypt.pkg

[Let's encrypt](https://letsencrypt.org) package for Debian / Ubuntu.

### How to use

Open [letsencrypt package page](https://build.opensuse.org/package/show/home:antonbatenev:letsencrypt/letsencrypt), follow "Download package" link, choose your distro, follow instructions, enjoy!

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
