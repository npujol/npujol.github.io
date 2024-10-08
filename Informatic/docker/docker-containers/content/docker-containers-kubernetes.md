---
tags:
- roadmap
- docker
- docker-containers
- ready
- online
- kubernetes
- infrastructure
---

# docker-containers-kubernetes

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/docker/deploying-containers/kubernetes)__

## Kubernetes

Kubernetes (K8s) is an open-source orchestration platform used for automating the deployment, scaling, and management of containerized applications. While Docker provides the container runtime environment, Kubernetes extends that functionality with a powerful and flexible management framework.

## Key Concepts

* __Cluster__: A set of machines, called nodes, that run containerized applications in Kubernetes. A cluster can have multiple nodes for load balancing and fault tolerance.
* __Node__: A worker machine (physical, virtual, or cloud-based) that runs containers as part of the Kubernetes cluster. Each node is managed by the Kubernetes master.
* __Pod__: The smallest and simplest unit in the Kubernetes object model. A pod represents a single instance of a running process and typically wraps one or more containers (e.g., a Docker container).
* __Service__: An abstraction that defines a logical set of pods and a policy for accessing them. Services provide load balancing, monitoring, and networking capabilities for the underlying pods.
* __Deployment__: A high-level object that describes the desired state of a containerized application. Deployments manage the process of creating, updating, and scaling pods based on a specified container image.

## Why Use Kubernetes?

Kubernetes plays a crucial role in managing containerized applications at scale, offering several advantages over traditional deployment mechanisms:

* __Scalability__: By automatically scaling the number of running containers based on resource usage and application demands, Kubernetes ensures optimal resource utilization and consistent app performance.
* __Self-healing__: Kubernetes continuously monitors the health of your containers and replaces failed pods to maintain the desired application state.
* __Rolling updates & rollbacks__: Kubernetes makes it easy to update your applications by incrementally rolling out new versions of container images, without any downtime.
* __Load balancing__: Services in Kubernetes distribute network traffic among container instances, offering a load balancing solution for your applications.

## Kubernetes vs. Docker Swarm

While both Kubernetes and Docker Swarm are orchestration platforms, they differ in terms of complexity, scalability, and ease of use. Kubernetes provides more advanced features, better scalability, and higher fault tolerance, but has a steeper learning curve. Docker Swarm, on the other hand, is simpler and more straightforward but lacks some advanced functionality.

In the context of these differences, selecting the right orchestration platform depends on the needs and requirements of your project.
