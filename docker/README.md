The /docker directory contains the files required to build and run the docker image that is used for development on UU servers or at home. This allows everyone that uses this software to use the same versions of packages etc.

Guide (windows):
1. Open command line in the /docker directory.
2. Run `docker build -t hmp-ai .` if the docker image has not been built yet.
3. Run `docker run hmp-ai` to start the image.