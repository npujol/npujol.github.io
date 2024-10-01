---
tags:
- roadmap
- kubernetes
- kubernetes-applications
- ready
- deployments
- strategies
- config
- online
---
# kubernetes-applications-deployments

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/running-applications/deployments)__

## Deployments

A Deployment is a resource object for __managing Pods__ and __ReplicaSets__ via a __declarative configuration__, which define a desired state that describes the application __workload__ life cycle, number of pods, deployment strategies, container images, and more. The Deployment Controller works to ensure the actual state matches desired state, such as by replacing a failed pod. Out of the box, Deployments support several __deployment strategies__, like “recreate” and “rolling update”, however can be customized to support more advanced deployment strategies such as _blue/green_ or _canary_ deployments.

Visit the following resources to learn more:

* [@official@Deployments Documentation](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)
* [@video@Kubernetes Deployments | Deployment Strategies](https://youtu.be/lxc4EXZOOvE)
* [@article@Kubernetes Deployment: From Basic Strategies to Progressive Delivery](https://codefresh.io/learn/kubernetes-deployment/)

|Deployment|StatefulSet|
|---|---|
|Intended for stateless applications|Intended for stateful applications|
|Pods are interchangeable|Pods are unique and have a persistent ID|
|All replicas share the same volumes and PersistentVolumeClaims|Each pod has its own volumes and PersistentVolumeClaims|
