---
tags:
  - roadmap
  - kubernetes
  - kubernetes-networking
  - ready
  - online
---

# kubernetes-networking-load-balancing

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/services-and-networking/load-balancing)__

## Load Balancing

Load balancing in distributes network traffic across multiple pods or nodes using a Service object. A Service provides a stable network endpoint for a set of pods, allowing other pods or external clients to access them through a single IP address and DNS name. Kubernetes offers three types of load balancing algorithms for Services, which distribute traffic based on __round-robin__, __least connections__, or __IP hash__. Load balancing is an essential part of Kubernetes networking, providing efficient and reliable traffic distribution across a cluster.

Learn more from the following resources:

* [@official@Load Balancing - Documentation](https://kubernetes.io/docs/concepts/services-networking/ingress/#load-balancing)
* [@video@Tutorial | Load Balancing Service in Kubernetes](https://www.youtube.com/watch?v=xCsz9IOt-fs)
* [@article@Ingress Controllers: The Swiss Army Knife of Kubernetes](https://thenewstack.io/ingress-controllers-the-swiss-army-knife-of-kubernetes/)

| Algorithm           | Round-Robin                              | Least Connections                              | IP Hash                                        |
|---------------------|------------------------------------------|------------------------------------------------|------------------------------------------------|
| __Function__        | Distributes requests sequentially to each server in order. | Routes requests to the server with the fewest active connections. | Distributes requests based on the hash of the client's IP address. |
| __Use Case__        | Best for evenly distributing load across servers with similar performance. | Ideal when server load can vary or some servers handle connections faster. | Useful when session persistence is needed (sticky sessions). |
| __Balancing Method__| Cycles through servers in a fixed order, regardless of their current load. | Prioritizes servers that have less load by connection count. | Maps requests from the same client IP to the same server. |
| __Advantages__      | Simple and efficient in environments with similar servers. | Ensures better load distribution when servers have unequal workloads. | Guarantees the same client is always routed to the same server. |
| __Disadvantages__   | Doesn’t account for varying server loads or connection speeds. | Can lead to imbalanced routing in case of long-lived connections. | Less effective when traffic is unevenly distributed by IP or if one server gets disproportionate requests. |
| __Scalability__     | Scalable but less optimal for dynamic environments. | More scalable for environments with fluctuating workloads. | Scalable for environments that need session persistence. |
| __Complexity__      | Very simple to implement.                 | Slightly more complex, requiring tracking of active connections. | Requires hash calculation and IP tracking for consistency. |
