---
tags:
  - roadmap
  - output
  - docker
  - ready
  - online
---

# docker-containers

## Contents

- [[docker-containers-docker-run]]
- [[docker-containers-docker-compose]]
- [[docker-containers-runtime-config-options]]
- [[docker-containers-paas-options]]
- [[docker-containers-kubernetes]]
- [[docker-containers-docker-swarm]]
- [[docker-containers-nomad]]

__Roadmap info from [roadmap website](https://roadmap.sh/docker/containers)__

## Running Containers

To start a new container, we use the `docker run` command followed by the image name. The basic syntax is as follows:

```bash
docker run [options] IMAGE [COMMAND] [ARG...]
```

For example, to run the official Nginx image, we would use:

```bash
docker run -d -p 8080:80 nginx
```

This starts a new container and maps the host’s port 8080 to the container’s port 80.

## Listing Containers

To list all running containers, use the `docker container ls` command. To view all containers (including those that have stopped), use the `-a` flag:

```bash
docker container ls -a
```

## Accessing Containers

To access a running container’s shell, use the `docker exec` command:

```bash
docker exec -it CONTAINER_ID bash
```

Replace `CONTAINER_ID` with the ID or name of your desired container. You can find this in the output of `docker container ls`.

## Stopping Containers

To stop a running container, use the `docker stop` command followed by the container ID or name:

```bash
docker container stop CONTAINER_ID
```

## Removing Containers

Once a container is stopped, we can remove it using the `docker rm` command followed by the container ID or name:

```bash
docker container rm CONTAINER_ID
```

To automatically remove containers when they exit, add the `--rm` flag when running a container:

```bash
docker run --rm IMAGE
```

## Deploying Containers

Deploying containers is a crucial step in using Docker and containerization to manage applications more efficiently, easily scale, and ensure consistent performance across environments. This topic will give you an overview of how to deploy Docker containers to create and run your applications.

## Overview

Docker containers are lightweight, portable, and self-sufficient environments that can run applications and their dependencies. Deploying containers involves starting, managing, and scaling these isolated environments in order to run your applications smoothly.

## Benefits of Container Deployment

- __Consistency__: Containers enable your application to run in the same way across various environments, avoiding the common “it works on my machine” issue.
- __Isolation__: Each container runs in an isolated environment, avoiding conflicts with other applications and ensuring that each service can be independently managed.
- __Scalability__: Containers make it easy to scale applications by running multiple instances and distributing the workload among them.
- __Version Control__: Deploying containers helps you manage different versions of your application, allowing you to easily roll back to previous versions if needed.

## Key Concepts

- __Image__: A Docker image is a lightweight, standalone, executable package that contains everything needed to run a piece of software, including the code, runtime, system tools, libraries, and settings.
- __Container__: A Docker container is a running instance of a Docker image. You can deploy multiple containers from the same image, each running independently.
- __Docker Registry__: A place where Docker images are stored and retrieved. Docker Hub is the default registry used by Docker, but you can use your own private registry if desired.

## Steps to Deploy Containers

- __Create a Dockerfile__: A Dockerfile is a script with instructions to build a Docker image. It should specify the base image, application code, dependencies, and configurations needed to run your application.

- __Build the Docker Image__: Using the Docker client, you can build a new image by running `docker build` and specifying the path to your Dockerfile. This will create a new Docker image based on the instructions in your Dockerfile.

- __Push the Docker Image__: After building the image, you must push it to a registry (e.g., Docker Hub) so that it can be easily retrieved when deploying containers. Use the `docker push` command followed by the image name and tag.

- __Deploy the Container__: To deploy a new container from the Docker image, use the `docker run` command followed by the image name and tag. This will start a new container and execute the required application.

- __Manage the Container__: Deployment involves ensuring the container is running properly and managing scaling, updates, and other key aspects. Use Docker commands like `docker ps` (to list running containers), `docker stop` (to stop a container), and `docker rm` (to remove a container) to manage your deployed containers.

- __Monitor and Log__: Collect logs and monitor the performance of your deployed containers to ensure they are running optimally. Use commands like `docker logs` (to view logs) and `docker stats` (to see container statistics) as needed.

## Conclusion

Deploying containers with Docker allows you to improve application consistency, security, and scalability while simplifying management and reducing the overhead typically associated with deployment. By understanding the concepts and steps outlined in this guide, you’ll be well-equipped to deploy your applications using Docker containers.

## Comparative table between __Nomad__, __Kubernetes__, and __Docker Swarm__

| __Category__            | __Nomad__                                       | __Kubernetes__                                  | __Docker Swarm__                               |
|-------------------------|-------------------------------------------------|-------------------------------------------------|------------------------------------------------|
| __Orchestration Type__   | General-purpose orchestrator (supports containers, VMs, and non-containerized workloads) | Container orchestration platform               | Native Docker container orchestration         |
| __Ease of Setup__        | Simple to set up with minimal dependencies      | Complex setup, requires extensive configuration | Easy to set up and integrates with Docker      |
| __Supported Workloads__  | Containers, VMs, Java apps, binaries, batch jobs | Containerized workloads (mainly Docker)         | Docker containers only                         |
| __Scheduler__            | Optimized for high flexibility and multi-cloud environments | Advanced, highly customizable, with support for different scheduling policies | Simple scheduling with Docker engine           |
| __Scalability__          | Highly scalable with multi-datacenter support   | Extremely scalable (used by large enterprises)  | Scales to small to medium-sized clusters       |
| __Networking__           | Requires manual setup for advanced networking options | Advanced, supports service discovery, load balancing, and network policies | Simplified networking with built-in service discovery |
| __State Management__     | Single binary with client/server architecture, minimal overhead | Requires etcd for state persistence and control plane | Built-in state management via Raft consensus algorithm |
| __Service Discovery__    | Simple, integrated DNS-based discovery          | Robust service discovery and DNS integration    | Simple service discovery with built-in DNS     |
| __Storage Support__      | Basic volume management                         | Advanced storage management with CSI support    | Limited, but supports Docker volumes           |
| __Deployment Complexity__| Lower complexity, can run with minimal infrastructure | High complexity, needs multiple components (API server, etcd, scheduler) | Lower complexity, deeply integrated into Docker |
| __Extensibility__        | Can be extended via plugins, integrates with Consul, Vault | Highly extensible with many APIs and plugins    | Less extensible, focused on simplicity         |
| __Learning Curve__       | Low to medium                                   | Steep learning curve due to the complexity and ecosystem | Low learning curve, very Docker-native         |
| __Community & Ecosystem__| Smaller community, mainly supported by HashiCorp | Large, active open-source community with many tools and integrations | Smaller community, mostly Docker-focused       |
| __Multi-cloud Support__  | Built-in multi-cloud support, works across different infrastructures | Good support for multi-cloud, but more complex to manage | Limited multi-cloud support                    |
| __Security__             | Integrates with HashiCorp Vault for secrets management | Robust security model with Role-Based Access Control (RBAC), secrets, and policies | Basic security, with simpler RBAC              |
| __Use Cases__            | Mixed workloads, multi-datacenter, hybrid cloud | Large-scale, complex, and enterprise container orchestration | Simple container deployments for small to medium-sized clusters |
| __Popular Use Cases__    | Batch processing, multi-cloud, dynamic infrastructure | Microservices, large-scale app deployments, hybrid and cloud-native apps | Small to medium-sized Docker-only environments |

### Summary

- __Nomad__ is a flexible, general-purpose orchestrator with simplicity, multi-datacenter, and mixed workload support.
- __Kubernetes__ is the most robust and complex orchestrator, suited for large-scale production deployments and advanced use cases.
- __Docker Swarm__ is Docker’s native solution, best for simpler, smaller-scale environments where Docker integration is key.

Each orchestrator has different strengths depending on the complexity, scalability, and type of workloads being deployed.
