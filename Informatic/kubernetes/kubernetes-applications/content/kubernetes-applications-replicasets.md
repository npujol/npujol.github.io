---
tags:
- roadmap
- kubernetes
- kubernetes-applications
- ready
- online
---

# kubernetes-applications-replicasets

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/running-applications/replicasets)__

## ReplicaSets

A ReplicaSet is a controller that ensures a specified number of replicas (__identical copies)__ of a pod are running in a cluster at all times. ReplicaSets help to ensure __high availability__ and __scalability__ by automatically scaling the number of pod replicas up or down in response to changes in demand or hardware failures. They are defined by a YAML file that specifies the desired number of replicas, the pod template to use, and other settings. They are responsible for monitoring the status of pods and creating or deleting replicas as necessary to meet the desired state.

## Resources

* [@official@ReplicaSet Documentation](https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/)
* [@video@ReplicaSet in Kubernetes](https://www.youtube.com/watch?v=1WM-LsH6tKc)
* [@article@Strategies for Running Stateful Workloads in Kubernetes: Pet Sets](https://thenewstack.io/strategies-running-stateful-applications-kubernetes-pet-sets/)

Influenced by the analogy of [pets vs. cattle](https://blog.engineyard.com/2014/pets-vs-cattle), the [Kubernetes](https://thenewstack.io/strategies-running-stateful-applications-kubernetes-volumes/) community has created [Pet Sets](http://blog.kubernetes.io/2016/07/stateful-applications-in-containers-kubernetes.html) as a way of running persistent, stateful workloads in version 1.3 or above.
