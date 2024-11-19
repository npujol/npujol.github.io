---
tags:
- roadmap
- docker
- docker-introduction
- ready
- online
- oci
- containerd
- container
- runtime
---

# docker-introduction-docker-and-oci

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/docker/introduction/docker-and-oci)__

## Docker and OCI

The [Open Container Initiative (OCI)](https://opencontainers.org/) is a Linux Foundation project which aims at creating industry standards for container formats and runtimes. Its primary goal is to ensure the compatibility and interoperability of container environments through defined technical specifications.

### Docker’s role in OCI

[Docker](https://www.docker.com/) is one of the founding members of the OCI, and it has played a pivotal role in shaping the standards for container formats and runtimes. Docker initially developed the container runtime (Docker Engine) and image format (Docker Image) that serve as the basis for OCI specifications.

### OCI Specifications

OCI has three main specifications:

* __Runtime Specification (runtime-spec):__ It defines the specification for executing a container via an isolation technology, like a container engine. The container runtime built by Docker, called `containerd`, has guided the development of the OCI runtime-spec.
* __Image Specification (image-spec):__ It defines the container image format, which describes the contents of a container and can be run by a compliant runtime. Docker’s initial image format has led to the creation of the OCI image-spec.
* __Distribution Specification (distribution-spec):__ It defines an API protocol to facilitate and standardize the distribution of content. Docker’s existing registry API served as a starting point and heavily influenced the design of the OCI Distro Spec.

### Compatibility between Docker and OCI

Docker remains committed to supporting the OCI specifications and, since its involvement in OCI, has continuously updated its software to be compliant with OCI standards. Docker’s `containerd` runtime and image format are fully compatible with OCI specifications, enabling Docker containers to be run by other OCI-compliant container runtimes and vice versa.

In summary, Docker and the Open Container Initiative work together to maintain standardization and compatibility within the container industry. Docker has played a significant role in the development of the OCI specifications, ensuring that the container ecosystem remains healthy, interoperable, and accessible to a wide range of users and platforms across the industry.

__Compatibility between Docker and OCI__:

| __Category__            | __Docker__                                       | __OCI (Open Container Initiative)__                         |
|-------------------------|--------------------------------------------------|-------------------------------------------------------------|
| __Commitment to OCI__    | Docker is committed to supporting OCI standards  | OCI sets the industry standards for container runtimes       |
| __Software Compliance__  | Docker continuously updates its software to be OCI-compliant | Ensures container runtimes and formats follow established standards |
| __Runtime Compatibility__| Docker’s `containerd` runtime is fully compatible with OCI | OCI runtimes can run Docker containers (and vice versa)      |
| __Image Format__         | Docker's image format is compatible with OCI standards | OCI defines standard container image formats                |
| __Interoperability__     | Docker containers can run on OCI-compliant runtimes | Ensures Docker and other OCI-compliant containers are interoperable |
| __Ecosystem__            | Docker is a key contributor to the development of OCI specs | OCI maintains industry-wide container standardization        |
| __Goal__                 | Maintain compatibility and interoperability within the container ecosystem | Provide open standards for container runtimes and image formats |

## Ref 

- https://kubebyexample.com/learning-paths/container-fundamentals/tools/introduction