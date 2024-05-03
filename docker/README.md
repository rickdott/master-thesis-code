The /docker directory contains the files required to build and run the docker image that is used for development on UU servers or at home. This allows everyone that uses this software to use the same versions of packages etc.

### Building and/or starting the Docker image
1. Make sure Docker is installed and available from the command line
2. Open command line in the /docker directory.
3. Run `docker build -t hmp-ai .` if the docker image has not been built yet.
4. Run `docker run -it hmp-ai` to start the image.

### Running code inside the Docker image
1. Install Visual Studio Code
2. Install the 'Docker' extension
3. A whale has found its way into your VS Code sidebar, click on it, right-click the running Docker container and click 'Attach Visual Studio Code', select the `/workspace` directory.

You are now able to work inside the Docker container.