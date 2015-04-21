# Python

These are docker images for Python running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).
The cuurrent container size is ```215.7 MB```


## Usage

```
docker run -ti --name python webhippie/python:latest bash

# Execute this for further available commands
docker exec -ti python manage help
```


## Versions

* [latest](https://github.com/dockhippie/python/tree/master)
  available as ```webhippie/python:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/python/)


## Available management commands

```bash
Usage: manage <command> [<args>]

Some useful manage commands are:
   bash      Start a shell on container
   commands  List all available sub commands
   console   Start an interactive console
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
