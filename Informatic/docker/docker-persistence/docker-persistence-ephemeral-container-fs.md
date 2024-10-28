---
tags:
- roadmap
- docker
- docker-persistence
- ready
- online
- volumes
---

# docker-persistence-ephemeral-container-fs

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/docker/data-persistence/ephemeral-container-fs)__

### Ephemeral FS

By default, the storage within a Docker container is ephemeral, meaning that any data changes or modifications made inside a container will only persist as long as the container is running. Once the container is stopped and removed, all the associated data will be lost. This is because Docker containers are designed to be stateless by nature.

This temporary or short-lived storage is called the “ephemeral container file system”. It is an essential feature of Docker, as it enables fast and consistent deployment of applications across different environments without worrying about the state of a container.

### Ephemeral FS and Data Persistence

As any data stored within the container’s ephemeral FS is lost when the container is stopped and removed, it poses a challenge to data persistence in applications. This is especially problematic for applications like databases, which require data to be persisted across multiple container life cycles.

To overcome these challenges, Docker provides several methods for data persistence, such as:

* __Volumes__: A Docker managed storage option, stored outside the container’s FS, allowing data to be persisted across container restarts and removals.
* __Bind mounts__: Mapping a host machine’s directory or file into a container, effectively sharing host’s storage with the container.
* __tmpfs mounts__: In-memory storage, useful for cases where just the persistence of data within the life-cycle of the container is required.

By implementing these strategies, Docker ensures that application data can be preserved beyond the life-cycle of a single container, making it possible to work with stateful applications.

Table comparing __data persistence in Docker__ using Volumes, Bind Mounts, and tmpfs Mounts:

| __Category__            | __Volumes__                                   | __Bind Mounts__                               | __tmpfs Mounts__                              |
|-------------------------|-----------------------------------------------|-----------------------------------------------|-----------------------------------------------|
| __Definition__           | Docker-managed storage stored outside the container's file system | Maps a host machine’s directory or file into the container | In-memory storage mounted inside the container |
| __Persistence__          | Data persists across container restarts and removals | Data persists as long as the host directory or file exists | Data persists only during the container's lifecycle (non-persistent) |
| __Management__           | Managed by Docker, stored in `/var/lib/docker/volumes/` by default | Fully managed by the user on the host machine | Managed by Docker, stored in memory (RAM)     |
| __Performance__          | High performance, optimized for Docker usage  | May have slight performance overhead depending on host filesystem | Very high performance, as data is stored in memory |
| __Use Cases__            | Ideal for persistent data that needs to survive container removals | Useful for sharing host files or directories with containers | Useful for temporary data that only needs to last during container runtime |
| __Security__             | Isolated from the host file system, safer for data protection | Direct access to host file system, less isolation | Data stored in memory, no persistence after container stops |
| __Portability__          | Portable across different Docker hosts        | Not portable; tightly coupled with the host machine’s file structure | Not portable; data lost when the container stops or reboots |
| __Ease of Use__          | Easy to manage using Docker commands          | Requires manually setting paths on the host   | Simple for temporary in-memory storage       |
| __Examples__             | Databases, application data that needs to persist | Config files, logs shared between host and container | Temporary caches, session data               |

This table outlines the key differences between Docker Volumes, Bind Mounts, and tmpfs Mounts for data persistence and storage management.
