docker-ruby
===========

## Description

Dockerfile for building a Ruby environment on [CentOS](https://registry.hub.docker.com/_/centos/).

This Dockerfile will create a image with:
- Ruby
- [Bundler](http://bundler.io/)
- CentOS Development Tools and Libraries.

Built image can be download by `docker pull nkwhr/ruby`.
You can also download a specific version by adding tag like `nkwhr/ruby:2.1.2` **(Recommended)**.

See [Docker Hub](https://registry.hub.docker.com/u/nkwhr/ruby/tags/manage/) for available tags.

## Usage

### Build your own image

```
$ git clone https://github.com/nkwhr/docker-ruby
(edit docker-ruby/Dockerfile if you don't like something.)
$ docker build -t "YOUR/TAG" docker-ruby/.
```

### Use image on Docker Hub

```
$ docker pull nkwhr/ruby:latest
$ docker run nkwhr/ruby:latest ruby -v
ruby 2.1.2p95 (2014-05-08 revision 45877) [x86_64-linux]
```

or in your Dockerfile

```
FROM nkwhr/ruby:2.1.2
```
