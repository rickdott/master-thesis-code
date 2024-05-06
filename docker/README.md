The /docker directory contains the files required to build and run the docker image that is used for development on UU servers or at home. This allows everyone that uses this software to use the same versions of packages etc.

### Building and/or starting the Docker image
1. Make sure Docker is installed and available from the command line
2. Make sure you have cloned the [hmp-ai package](https://github.com/rickdott/) and [this](https://github.com/rickdott/master-thesis-code) repository to the same folder, your folder structure should look like:

GIT/\
├── master-thesis-code/\
│ ├── docker/\
│ │ └── README.md #this file\
├── hmp-ai/

3. Open command line in the /docker directory.
4. Run `docker-compose up -d`, this will do anything required to build and start the image.

### Running code inside the Docker image
1. Install Visual Studio Code
2. Install the 'Docker' extension
3. A whale has found its way into your VS Code sidebar, click on it, right-click the running Docker container and click 'Attach Visual Studio Code', find the `/workspace` directory, going up a directory if `/root` is automatically selected. Changes you make to files in `master-thesis-code` or `hmp-ai` are synchronized on your host machine and the docker container. This allows you to run code in the container, and edit it locally or in the container, whichever is preferred. This approach ensures one source of truth for the code.

You are now able to work inside the Docker container.