# Clue Release Manager base Docker image

This a base image for Clue Release Manager, it's a generic one so it can be used not only in EEA projects.
Clue Release Manager is an implementation of the PyPi server backend as provided by http://pypi.python.org. It uses
SQLAlchemy (on top of sqlite by default) to store all project metadata and the filesystem for storing project files.
This image contains a costumized version, for more details you can visit the [repository of the
project](https://github.com/eea/ClueReleaseManager).

## Supported tags and respective Dockerfile links

- [`:latest`  (*Dockerfile*)](https://github.com/eea/eea.docker.cluereleasemanager/blob/master/Dockerfile)
- [`:2.1` (*Dockerfile*)](https://github.com/eea/eea.docker.cluereleasemanager/blob/2.1/Dockerfile)

See [older versions](https://github.com/eea/eea.docker.cluereleasemanager/releases)

## Changes

- [CHANGELOG.md](https://github.com/eea/eea.docker.cluereleasemanager/blob/master/CHANGELOG.md)

## Base docker image

- [hub.docker.com](https://registry.hub.docker.com/u/eeacms/cluereleasemanager)

## Source code

- [github.com](http://github.com/eea/eea.docker.cluereleasemanager)

## How to use this image

    $ docker run -it --rm -p 9090:9090 eeacms/cluereleasemanager

## Copyright and license

The Initial Owner of the Original Code is European Environment Agency (EEA).
All Rights Reserved.

The Original Code is free software;
you can redistribute it and/or modify it under the terms of the GNU
General Public License as published by the Free Software Foundation;
either version 2 of the License, or (at your option) any later
version.


## Funding

[European Environment Agency (EU)](http://eea.europa.eu)
