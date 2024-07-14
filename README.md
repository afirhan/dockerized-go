# Dockerized Go Application

## Description
This repository provides a Dockerized setup for running Go applications. It includes a Dockerfile configured for Alpine Linux and a Makefile for streamlined Docker operations.

## Prerequisites
Ensure you have Docker installed on your machine before proceeding.
<br></br>

## Installation
Clone the repository:
```bash
git clone <repository-url>
cd dockerized-go
```
<br></br>

## Usage
### Build the Docker Image
To build the Docker image:
```bash
make build
```
This command builds the Docker image using the Dockerfile located in <strong>docker/go</strong>.

### Start the Docker Container
To start the Docker container:
```bash
make start
```
This command starts the Docker container named <strong>GO-1.22.5</strong>.

### Stop the Docker Container
To stop the Docker container:
```bash
make stop
```
This command stops the running Docker container.

### Run a Go File
o run a Go file inside the Docker container, replace `<filename>` with your desired file:
```bash
make run <filename>
```
For example:


```bash
make run hello.go
```
This command executes the specified Go file (<strong>hello.go</strong> in this case) inside the Docker container.

### Clean Up
To clean up and remove all Docker resources including stopped containers, networks, and volumes:
```bash
make clean
```
This command stops all running containers, removes all stopped containers, and prunes Docker networks and volumes.
<br></br>

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
<br></br>

## Contact
For any inquiries or support, please contact [alifirhan.fa@gmail.com](mailto:alifirhan.fa@gmail.com).