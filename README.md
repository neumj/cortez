# Cortez

## Description

Repository for journal entries from trip to the Sea of Cortez, June 2023. 

## Collateral

The below links point to documentation on core libraries used to render the Game Warden Help Center: 
* [MkDocs](https://www.mkdocs.org/)
* [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
* [Markdown Guide](https://www.markdownguide.org/basic-syntax/)
* [Mermaid diagram library](https://mermaid.js.org/)

## Development Prerequisites

1. Install [Docker](https://docs.docker.com/get-docker/)
1. Install [Visual Studio Code](https://code.visualstudio.com/) 

## General Usage

Open a terminal window and clone the `cortez` repository to your workstation and navigate to the directory:

```
$ git clone git@github.com:neumj/cortez.git
$ cd cortez
```

Before you begin developing new documentation, ensure you have created and checked out 
a new feature branch:

```
$ git branch name_of_your_new_branch
$ git checkout name_of_your_new_branch
```

Various embedded functions in this repository require containerization.

While in the `cortez` root directory, create and run the container:

```
$ docker compose up
```

The container is now running locally with the Game Warden Help Center available at: http://0.0.0.0:8000/

Using your editor of choice, you can now begin developing new documentation.  Changes you make will 
auto-update to the locally running site.

New content should be developed in the `/docs` directory within an existing categorical directory, or within a new categorical directory.

Navigation pointers to new content should be added to the `mkdocs.yml` file located in the `cortez` root directory.

Once you have completed development, commit and push your changes, and create a merge request for your new branch to the `main` branch.

Docker clean-up:      

```
$ docker compose down
```
