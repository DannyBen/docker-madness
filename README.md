# Docker Madness Markdown Server

> **REPOSITORY DEPRECATION NOTICE**
> This repository is now merged into the [madness](https://github.com/DannyBen/madness)
> repository. Please refer to it instead.

---

This is a dockerized version of the [Madness markdown server ruby gem][1]. 

It allows you to start a webserver that shows your markdown documentation 
folder.

## Usage

The easiest way to use this image, is to create a shell alias:

```shell
$ alias madness='docker run --rm -it -v $PWD:/docs -p 3000:3000 dannyben/madness'
$ madness --help
```

### Use with docker-compose

Put this in your `docker-compose.yml`:

```yaml
# docker-compose.yml
services:
  web:
    image: dannyben/madness
    volumes: [".:/docs"]
    ports: ["3000:3000"]
    command: server
```

Then run:

```shell
$ docker-compose up
```

## Additional Information

- [Madness Home][4]
- [Madness Gem on GitHub][1]
- [Madness Gem on RubyGems][5]
- [Madness Docker Image on Docker Hub][2]
- [Madness Docker Source on GitHub][3]

---

[1]: https://github.com/DannyBen/madness
[2]: https://hub.docker.com/r/dannyben/madness/
[3]: https://github.com/DannyBen/docker-madness
[4]: http://madness.dannyb.co/
[5]: https://rubygems.org/gems/madness
