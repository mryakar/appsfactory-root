# AppsFactory Java Task

This is a project for the recruitment process of AppsFactory company. The task was basically to develop a couple of
microservices to provide car insurance premiums to the clients. Since the microservices need additional tools and
systems to complete the architecture of microservice. These tools and systems are like;

* Centralized configuration server which is responsible to provide service configurations to the instances since there
  may be many instances of a microservice.
* Discovery server which is responsible to register all running service instances to itself and keep tracking their
  availability.
* Gateway server which is responsible to provide routing for HTTP requests since all requests are made to one single
  point.

These services are required to ensure the structure of a microservice architecture.

## Dependencies

* Git >= v2.25.1
* Docker >= v20.10.8
* Apache Maven >= v3.6.3
* OpenJDK >= v11.0.11

## Installation

**1-) Download the root project**

````text
git clone git@github.com:mryakar/root.git
````

**2-) Download the services**

Make download.sh executable. This is optional. If you already have the repositories locally then you can skip this
step.

````shell
chmod +x download.sh
````

Run the download script. This will download the services from Github.

````shell
./download.sh
````

**2-) Build the project**

Make createDockerImages.sh executable.

````shell
chmod +x createDockerImages.sh
````

Run the build script. This will build the projects and creates their docker images.

````shell
./createDockerImages.sh
````

**4-) Run**

Run as root;

````shell
./run
````

**6-) Swagger**

Open the browser and go to this address;

http://localhost:8091/swagger-ui/

## Developers

* mryakar