Docker Madness Markdown Server
==================================================

This is a dockerized version of the [Madness markdown server ruby gem][1]. 

It allows you to start a webserver that shows your markdown documentation 
folder.

Usage Examples
--------------------------------------------------

```shell
# Start the server on localhost:3000, with the current directory as the 
# markdown documentation folder
$ docker run --rm -it -v $PWD:/docs -p 3000:3000 dannyben/madness

# Start madness with command line arguments, for instance:
# Run madness with --index, to automatically regenerate the search index
$ docker run --rm -it -v $PWD:/docs -p 3000:3000 dannyben/madness --index

# View additional options:
$ docker run --rm -it dannyben/madness --help
```

Use with docker-compose
--------------------------------------------------

Pui this in your `docker-compose.yml`:

```
# docker-compose.yml
version: '2'

services:
  web:
    image: dannyben/madness
    volumes: ["./:/docs"]
    ports: ["3000:3000"]
```

Then run:

```
$ docker-compose up
```

Additional Information
--------------------------------------------------

- [Madness Home][4]
- [Madness Gem on GitHub][1]
- [Madness Gem on RubyGems][5]
- [Madness Docker Image on Docker Hub][2]
- [Madness Docker Source on GitHub][3]

[1]: https://github.com/DannyBen/madness
[2]: https://hub.docker.com/r/dannyben/madness/
[3]: https://github.com/DannyBen/docker-madness
[4]: http://madness.dannyb.co/
[5]: https://rubygems.org/gems/madness
