---
tags:
- roadmap
- kubernetes
- kubernetes-scheduling
- ready
- online
- scheduling
---

# kubernetes-scheduling-taints-and-tolerations

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/scheduling/taints-and-tolerations)__

## Taints and Tolerations

__Taints__ and __tolerations__ are used in Kubernetes to restrict or allow pods to be scheduled on certain nodes based on labels. A taint is a label that is applied to a node to indicate certain limitations or requirements. A toleration is a label applied to a pod to indicate that it can tolerate certain taints. When a node has a taint, only pods with the corresponding tolerations can be scheduled on that node. This feature is useful for various purposes, such as ensuring separation of critical and non-critical workloads, reserving nodes for certain tasks, and protecting nodes from overloading.

## Resources

* [@official@Taints and Tolerations](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/)
* [@video@Kubernetes For Beginners: Taints & Tolerations](https://www.youtube.com/watch?v=mo2UrkjA7FE)
* https://kubebyexample.com/learning-paths/kubernetes-fundamentals/what-taint