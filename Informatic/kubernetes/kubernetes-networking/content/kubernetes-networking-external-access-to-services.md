---
tags:
  - roadmap
  - kubernetes
  - kubernetes-networking
  - ready
  - online
---

# kubernetes-networking-external-access-to-services

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/services-and-networking/external-access-to-services)__

## External Access to Services

External access to Kubernetes (k8s) Services allows external clients to access pods and services running in the cluster. There are multiple ways to enable external access to Services in k8s, including __NodePorts__, __LoadBalancers__, and __Ingress__. Ingress is a Kubernetes object that provides a flexible way to manage external access, routing traffic to Services based on URL or host. External access is essential to ensure the scalability and reliability of Kubernetes deployments.

## Resources

* [@video@How do I provide external access to Kubernetes services](https://www.youtube.com/watch?v=iBYTFpoXx24)
* [@official@Ingress - Documentation](https://kubernetes.io/docs/concepts/services-networking/ingress/)
* [@article@Kubernetes Ingress for Beginners](https://thenewstack.io/kubernetes-ingress-for-beginners/)

### __NodePorts__, __LoadBalancers__, and Ingress comparison

| Feature         | NodePorts                               | LoadBalancers                          | Ingress                                   |
|-----------------|-----------------------------------------|----------------------------------------|-------------------------------------------|
| __Function__    | Exposes a service on each node’s IP at a static port. | Exposes a service externally using a cloud provider's load balancer. | Manages external access to services using HTTP/HTTPS routing. |
| __Use Case__    | Suitable for development/testing environments. | Ideal for exposing services externally in cloud environments. | Best for managing multiple services with domain-based routing. |
| __Access Type__ | Direct access via node IP and a specific port. | External access via cloud load balancer's public IP. | Routes based on HTTP/HTTPS paths or domains. |
| __Port__        | Requires a specific port to be exposed on each node. | Allocates a port dynamically from the cloud provider. | No need to expose a specific port; uses HTTP/HTTPS. |
| __Scalability__ | Limited scalability as it relies on node IPs. | Scales automatically with cloud infrastructure. | Highly scalable as it can manage many services with rules. |
| __Cost__        | No additional cost; part of Kubernetes setup. | May incur cloud provider charges for the load balancer. | Minimal cost, but may require a load balancer for external access. |
| __Complexity__  | Simple and easy to configure.            | Easy to configure, but depends on cloud provider integration. | More complex as it requires configuring routing rules. |
