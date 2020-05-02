<h1 align="center">Welcome to bank-account 👋</h1>

<p align="center">

  <img alt="Version" src="https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000" />

  <a href="https://github.com/lpmatos/bank-account" target="_blank">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" />
  </a>

  <a href="#" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>

  <a href="https://github.com/lpmatos/bank-account">
    <img alt="Open Source" src="https://badges.frapsoft.com/os/v1/open-source.svg?v=102">
  </a>

  <a href="https://github.com/lpmatos/bank-account/graphs/contributors">
    <img alt="GitHub Contributors" src="https://img.shields.io/github/contributors/lpmatos/bank-account">
  </a>

  <a href="https://github.com/lpmatos/bank-account">
    <img alt="GitHub Language Count" src="https://img.shields.io/github/languages/count/lpmatos/bank-account">
  </a>

  <a href="https://github.com/lpmatos/bank-account">
    <img alt="GitHub Top Language" src="https://img.shields.io/github/languages/top/lpmatos/bank-account">
  </a>

  <a href="https://github.com/lpmatos/bank-account/stargazers">
    <img alt="GitHub Stars" src="https://img.shields.io/github/stars/lpmatos/bank-account?style=social">
  </a>

  <a href="https://github.com/lpmatos/bank-account/commits/master">
    <img alt="GitHub Last Commit" src="https://img.shields.io/github/last-commit/lpmatos/bank-account">
  </a>

  <a href="https://github.com/lpmatos/bank-account">
    <img alt="Repository Size" src="https://img.shields.io/github/repo-size/lpmatos/bank-account">
  </a>

  <a href="https://github.com/lpmatos/bank-account/issues">
    <img alt="Repository Issues" src="https://img.shields.io/github/issues/lpmatos/bank-account">
  </a>

  <a href="https://github.com/lpmatos/bank-account/blob/master/LICENSE">
    <img alt="MIT License" src="https://img.shields.io/github/license/lpmatos/bank-account">
  </a>
</p>

<p align="center">
  <a href="#pre-requisites">Pre-Requisites</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#description">Description</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#environment-variables">Environment Variables</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#how-to-contribute">How to contribute</a>
</p>

### Getting Started

To use this repository you need to make a **git clone**:

```bash
git clone --depth 1 https://github.com/lpmatos/bank-account.git -b master
```

This will give access on your **local machine** to this project.

### Description

> This is a simple Ruby project to create a back account register and save all information in a YML File. Your object is to practice this wonderful language.

### 🐋 Development with Docker

Steps to build the Docker Image.

#### Build

```bash
docker image build -t <IMAGE_NAME> -f <PATH_DOCKERFILE> <PATH_CONTEXT_DOCKERFILE>
docker image build -t <IMAGE_NAME> . (This context)
```

#### Run

Steps to run the Docker Container.

* **Linux** running:

```bash
docker container run -d -p <LOCAL_PORT:CONTAINER_PORT> <IMAGE_NAME> <COMMAND>
docker container run -it --rm --name <CONTAINER_NAME> -p <LOCAL_PORT:CONTAINER_PORT> <IMAGE_NAME> <COMMAND>
```

* **Windows** running:

```
winpty docker.exe container run -it --rm <IMAGE_NAME> <COMMAND>
```

For more information, access the [Docker](https://docs.docker.com/) documentation or [this](docs/annotations/docker.md).

### 🐋 Development with Docker Compose

Build and run a docker-compose.

```bash
docker-compose up --build
```

Down all services deployed by docker-compose.

```bash
docker-compose down
```

Down all services and delete all images.

```bash
docker-compose down --rmi all
```

### 🎒 How to contribute

1. Make a **Fork**.
2. Follow the project organization.
3. Add the file to the appropriate level folder - If the folder does not exist, create according to the standard.
4. Make the **Commit**.
5. Open a **Pull Request**.
6. Wait for your pull request to be accepted.. 🚀

Remember: There is no bad code, there are different views/versions of solving the same problem. 😊

### 🔔 Add to git and push

You must send the project to your GitHub after the modifications

```bash
git add -f .
git commit -m "Added - Fixing somethings"
git push origin master
```

### 📋 Versioning

- [CHANGELOG](CHANGELOG.md)

### 📜 License

Distributed under the MIT License. See [LICENSE](LICENSE) for more information.

### ☎️ Contacts

Hey!! If you like this project or if you find some bugs feel free to contact me in my channels:

* **Email**: luccapsm@gmail.com
* **Linkedin**: www.linkedin.com/in/lucca-pessoa-4abb71138/

[![Facebook](https://github.frapsoft.com/social/facebook.png)](https://www.facebook.com/lucca.pessoa.9)
[![Github](https://github.frapsoft.com/social/github.png)](https://github.com/lpmatos)

### Author

👤 **Lucca Pessoa**

* Website: https://github.com/lpmatos
* Github: [@lpmatos](https://github.com/lpmatos)
* LinkedIn: [@luccapessoa](https://linkedin.com/in/luccapessoa)

### Show your support

Give a ⭐️ if this project helped you!

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
