---
tags:
- roadmap
- docker
- docker-containers
- ready
- online
---

# docker-containers-docker-swarm

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/docker/deploying-containers/docker-swarm)__

## Docker Swarm

Docker Swarm is a container orchestration tool that enables users to manage multiple Docker nodes and deploy services across them. It is a native clustering and orchestration feature built into the Docker Engine, which allows you to create and manage a swarm of Docker nodes, referred to as a *Swarm*.

## Key concepts

* __Node__: A Docker node is an instance of the Docker Engine that participates in the swarm. Nodes can either be a *worker* or a *manager*. Worker nodes are responsible for running containers whereas manager nodes control the swarm and store the necessary metadata.
* __Services__: A service is a high-level abstraction of the tasks required to run your containers. It defines the desired state of a collection of containers, specifying the Docker image, desired number of replicas, and required ports.
* __Tasks__: A task carries a Docker container and the commands required to run it. Swarm manager nodes assign tasks to worker nodes based on the available resources.

## Main advantages

* __Scalability__: Docker Swarm allows you to scale services horizontally by easily increasing or decreasing the number of replicas.
* __Load balancing__: Swarm ensures that the nodes within the swarm evenly handle container workloads by providing internal load balancing.
* __Service discovery__: Docker Swarm allows you to automatically discover other services in the swarm by assigning a unique DNS entry to each service.
* __Rolling updates__: Swarm enables you to perform rolling updates with near-zero downtime, easing the process of deploying new versions of your applications.

Visit the official [Docker Swarm documentation](https://docs.docker.com/engine/swarm/) to learn more about its features and best practices.
