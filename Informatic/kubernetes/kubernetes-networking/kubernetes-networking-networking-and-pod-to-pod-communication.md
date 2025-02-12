---
tags:
  - roadmap
  - kubernetes
  - kubernetes-networking
  - ready
  - online
---

# kubernetes-networking-networking-and-pod-to-pod-communication

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/services-and-networking/networking-and-pod-to-pod-communication)__

## Networking and Pod to Pod Communication

Networking is crucial for communication between pods and resources in a Kubernetes cluster. Each pod has a unique IP address and can communicate with other pods directly. Container networking interface (CNI) plugins are used to configure pod network interfaces and provide isolation between pods. Kubernetes also provides networking services such as load balancing, service discovery, and ingress, which enable external traffic to access pods and services. These services are implemented using Kubernetes objects such as Services, Ingress, and NetworkPolicies. Networking and pod-to-pod communication are essential for scalability, reliability, and flexibility in Kubernetes clusters.

Learn more from the following resources:

* [@official@Cluster Networking - Documentation](https://kubernetes.io/docs/concepts/cluster-administration/networking/)
* [@official@Job with Pod-to-Pod Communication](https://kubernetes.io/docs/tasks/job/job-with-pod-to-pod-communication/)
* [@article@How Kubernetes Provides Networking and Storage to Applications](https://thenewstack.io/how-kubernetes-provides-networking-and-storage-to-applications/)
* [@feed@Explore top posts about Networking](https://app.daily.dev/tags/networking?ref=roadmapsh)


## Network Policies in Kubernetes

1. Default Behavior (No Network Policies)

- By default, all pods are non-isolated
- All ingress (incoming) traffic is allowed
- All egress (outgoing) traffic is allowed

2. With Network Policies

- Policies can restrict both ingress and egress traffic
- Pod A (Source) has egress policies defining:

* Which namespaces it can send to
* Which IP ranges it can connect to

- Pod B (Destination) has ingress policies defining:

* Which namespaces can connect to it
* Which pods (by label) can connect to it

3. Special Cases

- Node traffic is always allowed (to/from the node where pod is running)
- Pods cannot block access to themselves
- Policies are additive (combine with OR logic)

4. Policy Evaluation

- For a connection to be allowed:
  * Source pod's egress policy must allow it AND
  * Destination pod's ingress policy must allow it
- If either policy blocks the connection, it won't be allowed

5. Policy Selectors can be based on

- Pod labels
- Namespace labels
- IP blocks (CIDR ranges)
