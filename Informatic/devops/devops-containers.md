---
tags:
  - roadmap
  - Informatic
  - devops
  - ready
  - online
---

# devops-containers

## Contents

- [[devops-containers-docker]]
- [[devops-containers-lxc]]

__Roadmap info from [roadmap website](https://roadmap.sh/devops/containers@2Wd9SlWGg6QtxgiUVLyZL)__

## Containers

Containers are lightweight, portable, and isolated environments that package applications and their dependencies, enabling consistent deployment across different computing environments. They encapsulate software code, runtime, system tools, libraries, and settings, ensuring that the application runs the same regardless of where it’s deployed. Containers share the host operating system’s kernel, making them more efficient than traditional virtual machines. Popular containerization platforms like Docker provide tools for creating, distributing, and running containers. This technology supports microservices architectures, simplifies application deployment, improves scalability, and enhances DevOps practices by streamlining the development-to-production pipeline and enabling more efficient resource utilization.

Visit the following resources to learn more:

- [articleWhat are Containers?](https://cloud.google.com/learn/what-are-containers)
- [articleWhat is a Container?](https://www.docker.com/resources/what-container/)
- [articleArticles about Containers - The New Stack](https://thenewstack.io/category/containers/)
- [videoWhat are Containers?](https://www.youtube.com/playlist?list=PLawsLZMfND4nz-WDBZIj8-nbzGFD4S9oz)
- [feedExplore top posts about Containers](https://app.daily.dev/tags/containers?ref=roadmapsh)

Ref: [[linux-containerization]], [[docker-containers]]

### Summary: What is a Container?

__Containers__ represent a modern solution for deploying applications efficiently. To understand their significance, let’s first look at traditional methods of application deployment and the evolution toward containers.

### Traditional Deployment

- __Physical Servers__: Deploying applications on physical machines required significant resources (space, power, cooling) and effort to install operating systems and dependencies. Scaling meant adding more machines.
- __Virtualization__: Enabled running multiple __virtual machines (VMs)__ on a single physical machine. Each VM had its own operating system and application, offering better resource use and isolation. But, VMs were still heavy, with full OS overhead, and dependency issues arose between applications.

### Challenges with Virtual Machines

- __Dependency Conflicts__: Running multiple applications on one VM caused dependency conflicts. Upgrading one application’s dependencies could break another.
- __Resource Overhead__: Each VM includes its own OS, creating inefficiencies when scaling hundreds of applications.
- __Slow Booting__: Each VM had to boot its own OS, which took time and made scaling slow.

### Containers: A Lightweight Solution

__Containers__ solve many of these problems by abstracting the application and its dependencies at the user space level, without virtualizing the entire OS:

- __User Space Isolation__: Containers isolate only the application and its dependencies above the kernel, unlike VMs, which virtualize the entire machine.
- __Efficiency__: Since containers don't need to carry a full OS, they are lightweight and can be created, scaled, and shut down quickly.
- __Portability__: Containers allow developers to write and package code with all necessary dependencies, ensuring that applications run consistently on different environments (local or production).
- __Fast Start-Up__: Containers don’t need to boot an OS, making them faster to start than VMs.

### Benefits of Containers for Developers

1. __Code-Centric__: Containers offer a developer-friendly, efficient way to deploy high-performance, scalable applications.
2. __Consistency__: They ensure reliable performance across environments, thanks to their Linux kernel base, eliminating "it works on my machine" issues.
3. __Microservices Architecture__: Containers support a modular, microservices design, allowing easy scaling and updates to individual components without affecting the entire system.

### Linux Technologies Behind Containers

1. __Linux Processes__: Each process in Linux has isolated memory, making it ideal for quickly creating and destroying containers.
2. __Namespaces__: Containers use Linux namespaces to limit what an application can access (e.g., process IDs, directories, etc.).
3. __Cgroups__: Control the resources (CPU, memory, I/O) an application can consume, ensuring isolation and fairness.
4. __Union File Systems__: Bundle everything required into minimal layers, creating lightweight container images.

### Container Layers and Dockerfiles

- __Dockerfile__: A text file with instructions to build a container image. Each command in the Dockerfile creates a new __read-only layer__.
- __Writable Container Layer__: When a container runs, a __writable, ephemeral layer__ is added on top of the image. Changes to files in the container are written here, but they are lost when the container stops.
- __Multi-Stage Builds__: Best practices today involve a multi-stage build process where one container builds the application, and a separate, minimal container runs it, reducing the attack surface.

### Storing and Managing Container Images

- __Artifact Registry__: Google’s registry for storing container images, integrated with Google’s Identity and Access Management (IAM) for securing images.
- __Public Repositories__: Container images can be pulled from repositories like Docker Hub, GitLab, or Google’s Artifact Registry.
- __Cloud Build__: Google’s managed service for building containers, integrated with tools like __Cloud IAM__ and capable of fetching source code from various repositories. Cloud Build can compile code, run tests, and deploy images to environments like Google Kubernetes Engine (GKE) or App Engine.

### Benefits of Containers

- __Portability__: Containers allow applications to run consistently across different environments.
- __Efficiency__: With layered images, only changes are stored in new layers, making updates faster and reducing the size of container images.
- __Isolation__: Containers ensure that applications are isolated, avoiding dependency conflicts and resource contention.
