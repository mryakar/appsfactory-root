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
* Docker Compose >= v1.29.2
* Apache Maven >= v3.6.3
* OpenJDK >= v11.0.11

## Installation

**1-) Build the project**

Run this command to build the project.

````shell
mvn package
````

**2-) Create docker images**

Make createDockerImages.sh executable.

````shell
chmod +x createDockerImages.sh
````

Run the build script. This will build the projects and creates their docker images.

````shell
./createDockerImages.sh
````

**3-) Run**

Run the project.

````shell
sudo docker-compose up -d
````

**4-) Import Regions**

Make importPostCodes.sh executable.

````shell
chmod +x importPostCodes.sh
````

Run the build script. This will import regions to the system.

````shell
./importPostCodes.sh
````

**5-) Open Swagger UI for the services**

- For vm-provider http://localhost:8090/swagger-ui/
- For region-provider http://localhost:8091/swagger-ui/
- For insurance-premium-provider http://localhost:8092/swagger-ui/

Note: Normally, in microservice architectures, microservices are not bind to host's ports. Instead, they only expose
their ports to the container environment. Ports are bind to host for only to show Swagger UI. This can be changed in the
docker-compose.yml file.

Note: Swagger UIs can be used to test the services individually or HTTP requests can be sent to the services through the
gateway which means all request will be sent to http://localhost:8080/api/**.

## Developers

* mryakar