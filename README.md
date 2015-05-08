## Clue Release Manager base Docker image

This a base image for Clue Release Manager, it's a generic one so it can be used not only in EEA projects.
Clue Release Manager is an implementation of the PyPi server backend as provided by http://pypi.python.org. It uses
SQLAlchemy (on top of sqlite by default) to store all project metadata and the filesystem for storing project files. 
This image contains a costumized version, for more details you can visit the [repository of the 
project](https://github.com/eea/ClueReleaseManager).

### Environment variables
 - **CRM_SOURCE** (Link to zip archive or egg name that will be used for installation)
 - **PORT** (running port for the server)
 - **EGGS_PATH** (path to folder that will keep all the eggs)

### How to use this image
        
        $ docker run -it --rm -p 9090:9090 eeacms/cluereleasemanager
