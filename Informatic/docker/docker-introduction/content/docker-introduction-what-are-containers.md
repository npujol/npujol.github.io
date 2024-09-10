---
tags:
- roadmap
- docker
- docker-introduction
- ready
- online
- containers
---

# docker-introduction-what-are-containers

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/docker/introduction/what-are-containers)__

## What are Containers?

Containers are lightweight, portable, and isolated software environments that allow developers to run and package applications with their dependencies, consistently across different platforms. They help to streamline application development, deployment, and management processes while ensuring that applications run consistently, regardless of the underlying infrastructure.

## How do containers work?

Unlike traditional virtualization, which emulates a complete operating system with its hardware resources, containers share the host’s OS kernel and leverage lightweight virtualization techniques to create isolated processes. This approach leads to several benefits, including:

* __Efficiency__: Containers have less overhead and can share common libraries and executable files, making it possible to run more containers on a single host compared to virtual machines (VMs).
* __Portability__: Containers encapsulate applications and their dependencies, so they can easily be moved and run across different environments and platforms consistently.
* __Fast startup__: Since containers don’t need to boot a full OS, they can start up and shut down much faster than VMs.
* __Consistency__: Containers provide a consistent environment for development, testing, and production stages of an application, reducing the “it works on my machine” problem.

## Containers and Docker

Docker is a platform that simplifies the process of creating, deploying, and managing containers. It provides developers and administrators with a set of tools and APIs to manage containerized applications. With Docker, you can build and package application code, libraries, and dependencies into a container image, which can be distributed and run consistently in any environment that supports Docker.

* [@official@What is a container?](https://www.docker.com/resources/what-container/)
* [@feed@Explore top posts about Containers](https://app.daily.dev/tags/containers?ref=roadmapsh)
