Docker Madness Mardkwon Server
==================================================


This is a dockerized version of the [Madness markdown server ruby gem][1]. 

It allows you to start a webserver that shows your markdown documentation 
folder.

Usage Examples
--------------------------------------------------

```
# Start the server on localhost:3000, with the current directory as the 
# markdown documentation folder
$ docker run --rm -it -v $PWD:/docs -p 3000:3000 dannyben/madness

# Start madness with command line arguments, for instance: Run madness with
# --index
$ docker run --rm -it -v $PWD:/docs -p 3000:3000 dannyben/madness madness --index
```

[1]: https://github.com/DannyBen/madness
