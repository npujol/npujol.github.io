---
tags:
- roadmap
- kubernetes
- kubernetes-applications
- ready
- online
---

# kubernetes-applications-statefulsets

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/running-applications/statefulsets)__

## StatefulSets

It is a controller that manages the deployment and scaling of a set of __stateful pods__ that require stable network identities and stable storage volumes. StatefulSets are used to run stateful applications such as databases, where the order and uniqueness of each pod is important. StatefulSets provide unique stable network identities and __stable storage volumes__ for each pod, which allows stateful applications to maintain data consistency even when they are scaled up or down, or when nodes fail or are replaced. StatefulSets are defined by a YAML file that includes a pod template, a service to access the pods, and other settings.

## Resources

* [@official@StatefulSets Documentation](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/)
* [@video@Kubernetes StatefulSet | Tutorial](https://www.youtube.com/watch?v=pPQKAR1pA9U)
* [@article@Different Approaches for Building Stateful Kubernetes Applications](https://thenewstack.io/different-approaches-for-building-stateful-kubernetes-applications/)
