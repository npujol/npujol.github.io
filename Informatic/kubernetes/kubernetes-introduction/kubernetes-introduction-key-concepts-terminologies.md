---
tags:
- roadmap
- kubernetes
- kubernetes-introduction
- ready
- online
---

# kubernetes-introduction-key-concepts-terminologies

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/kubernetes-introduction/key-concepts-terminologies)__

## Key Concepts Terminologies

Kubernetes is an open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications. Here are some important concepts and terminologies in Kubernetes:

* Cluster Architecture: The architectural concepts behind Kubernetes.
* Containers: Technology for packaging an application along with its runtime dependencies.
* Workloads: Understand Pods, the smallest deployable compute object in Kubernetes, and the higher-level abstractions that help you to run them.
* Services, Load Balancing, and Networking: Concepts and resources behind networking in Kubernetes.
* Storage: Ways to provide both long-term and temporary storage to Pods in your cluster.
* Configuration: Resources that Kubernetes provides for configuring Pods.
* Cluster Administration: Lower-level detail relevant to creating or administering a Kubernetes cluster.

## Resources

* [@official@Concepts of Kubernetes](https://kubernetes.io/docs/concepts/)
* [@video@What Is Kubernetes?](https://www.youtube.com/watch?v=QJ4fODH6DXI)
* [@video@Kubernetes Explained by Experts in 2 Minutes](https://youtu.be/XfBrtNZ2OCw)
* [@article@Understand Kubernetes terminology](https://about.gitlab.com/blog/2020/07/30/kubernetes-terminology/)

### Concepts comparison with docker

| Kubernetes Concepts                           | Docker Equivalent Concepts                              | Description                                                                                     |
|-----------------------------------------------|---------------------------------------------------------|-------------------------------------------------------------------------------------------------|
| __Cluster Architecture__                      | __Docker Host / Swarm Mode__                            | In Kubernetes, a cluster consists of multiple nodes (worker and master nodes), whereas Docker can either run containers on a single host or use __Docker Swarm__ for cluster management. |
| __Node__                                      | __Docker Host__                                         | A node in Kubernetes is a physical or virtual machine in the cluster, much like a Docker host.   |
| __Pod__                                       | __Container__                                           | A pod in Kubernetes is the smallest deployable unit, typically running one or more containers (usually Docker containers). Docker operates with containers directly. |
| __ReplicaSet / Deployment__                   | __Docker Compose / Docker Swarm Service__               | A Kubernetes __ReplicaSet__ or __Deployment__ manages the lifecycle of Pods and ensures that a defined number of them are running. In Docker, __Compose__ defines multi-container apps and __Swarm services__ handle orchestration. |
| __Services__                                  | __Docker Networking + Docker Swarm Services__           | Kubernetes services expose Pods (containers) via networking and load balancing. In Docker, containers use __networks__, and in Swarm, services manage network routing and discovery. |
| __Load Balancing__                            | __Docker Load Balancing / Routing Mesh in Swarm__       | Kubernetes provides built-in load balancing for services, similar to Docker’s routing mesh in Swarm for distributing requests across multiple containers. |
| __Ingress__                                   | __Docker HTTP Routing / Nginx with Docker__             | Kubernetes uses __Ingress__ to manage external access to services, typically HTTP/HTTPS routing, similar to how Docker uses HTTP routing setups with reverse proxies like __Nginx__. |
| __Persistent Volume (PV)__                    | __Docker Volumes__                                      | Kubernetes __Persistent Volumes__ (PV) provide storage for Pods, similar to __Docker Volumes__ that persist data outside of the container lifecycle. |
| __Persistent Volume Claim (PVC)__             | __Volume Mounting in Docker__                           | A __PVC__ in Kubernetes is a request for storage (from PVs), while in Docker, storage is requested through volume mounting. |
| __ConfigMap__                                 | __Docker Environment Variables / Docker Compose Env__   | Kubernetes __ConfigMaps__ are used to pass configuration data to Pods, similar to Docker’s environment variables or `.env` files in __Compose__. |
| __Secret__                                    | __Docker Secrets__                                      | Kubernetes __Secrets__ store sensitive information like passwords, much like __Docker Secrets__ in Swarm Mode. |
| __Horizontal Pod Autoscaler (HPA)__           | __Docker Swarm Autoscaling (Manual)__                   | Kubernetes supports autoscaling of Pods based on resource usage, whereas Docker Swarm requires manual configuration for scaling containers. |
| __DaemonSet__                                 | __Docker Container on Every Node__                      | A __DaemonSet__ ensures that a copy of a Pod runs on all (or some) Nodes in Kubernetes, similar to how you might run a container on every node in Docker manually. |
| __StatefulSet__                               | __Docker Compose Stateful Services / Custom__           | Kubernetes __StatefulSets__ handle stateful applications with stable network identities, which Docker requires manual setup|
| __Job__                                       | __Docker Compose Jobs__                                 | Kubernetes __Jobs__ are a type of __Pod__ that manage a defined number of containers. |
| __CronJob__                                   | __Docker Compose Cron Jobs__                            | Kubernetes __CronJobs__ are a type of __Job__ that manage a defined number of containers. |
| __Service__                                   | __Docker Service__                                      | Kubernetes __Services__ are containers that are managed by a __Service__ in Kubernetes. |
