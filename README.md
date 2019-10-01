# ripgrep Dockerfile
[This repository](https://github.com/mbologna/docker-ripgrep/) contains **Dockerfile** of [*ripgrep*](https://github.com/BurntSushi/ripgrep), for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/mbologna/docker-ripgrep/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker image

* rust:1.38-slim

## Usage

* Identify the path containing the code you want to ripgrep

* Launch the container by supplying the path as a volume in read only mode and the pattern to search for:

        % docker run -v `pwd`:/data:ro mbologna/docker-ripgrep rg -i bologna
        README.md:[This repository](https://github.com/mbologna/docker-ripgrep/) contains **Dockerfile** of [*ripgrep*](https://github.com/BurntSushi/ripgrep), for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/mbologna/docker-ripgrep/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).
        README.md:        % docker run -v `pwd`:/data:ro mbologna/docker-ripgrep rg -i bologna
        README.md:        README.md:[This repository](https://github.com/mbologna/docker-ripgrep/) contains **Dockerfile** of [*ripgrep*](https://github.com/BurntSushi/ripgrep), for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/mbologna/docker-ripgrep/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).
        README.md:        README.md:        % docker run -v ~/Development/docker-ripgrep:/data:ro mbologna/docker-ripgrep rg -L -c
        README.md:        Dockerfile:LABEL maintainer="Michele Bologna <mb@michelebologna.net>"
        README.md:        LICENSE:Copyright (c) 2019 Michele Bologna
        LICENSE:Copyright (c) 2019 Michele Bologna
        Dockerfile:LABEL maintainer="Michele Bologna <mb@michelebologna.net>"
