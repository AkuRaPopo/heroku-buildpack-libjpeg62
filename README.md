Heroku Buildpack: libjpeg62
======================

This is a Heroku Buildpack to use [libtiff 4.0.3]


Usage
-----

With [heroku-buildpack-multi](https://github.com/heroku/heroku-buildpack-multi),

```
$ heroku config:add BUILDPACK_URL=https://github.com/heroku/heroku-buildpack-multi.git

$ cat .buildpacks
https://github.com/heroku/heroku-buildpack-ruby.git
https://github.com/a2ikm/heroku-buildpack-libtiff.git
```
