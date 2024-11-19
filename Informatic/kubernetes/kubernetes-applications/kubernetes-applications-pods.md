---
tags:
- roadmap
- kubernetes
- kubernetes-applications
- ready
- pods
- containers
- online 
- containerized
---

# kubernetes-applications-pods

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/running-applications/pods)__

## Pods

In Kubernetes, a pod is the __smallest deployable unit__ that represents a single instance of a running process in a cluster. A pod can contain one or more containers that share the same network namespace and can access the same storage volumes. Pods are created and managed by Kubernetes, and they are scheduled to run on one of the nodes in the cluster. Pods provide a lightweight and flexible abstraction layer that enables Kubernetes to manage the deployment, scaling, and networking of containerized applications. Pods also facilitate the communication and data exchange between containers running in the same pod.

## Resources

- [@official@Pods Documentation](https://kubernetes.io/docs/concepts/workloads/pods/)
- [@video@What is a Pod in kubernetes ? Why do you need it ?](https://www.youtube.com/watch?v=k0fzMZgpp14)
- [@article@The Kubernetes Way: Pods and Services](https://thenewstack.io/kubernetes-way-part-one/)
- [@article@5 Best Practices for Configuring Kubernetes Pods Running in Production](https://thenewstack.io/5-best-practices-for-configuring-kubernetes-pods-running-in-production/)

- __Select Based on Workload__: Use the correct controller type—Deployment, StatefulSet, or DaemonSet—according to your workload characteristics.
- __Deployment Controller__: Ideal for stateless pods; offers scaling, deployment history, and rollback features.
- __StatefulSet Controller__: Suitable for stateful workloads (e.g., databases) needing predictable naming and high availability.
- __DaemonSet Controller__: Ensures a pod runs on every cluster node, ideal for setting up node-specific workloads.
- __Recommendation__: Always choose the most appropriate controller before deployment for optimal management.
- __Restart Policy__: Pods restart automatically when containers fail, but health checks enhance this capability.
- __Readiness Probe__: Checks if a pod is ready to accept traffic (e.g., verifying files or database access).
- __Liveness Probe__: Monitors the health of the container; if it fails, traffic is stopped until healthy.
- __Startup Probe__: Useful for slow-starting applications, delaying the transition to liveness checks.
- __Configuration__: Probes can be set up using commands, HTTP, or TCP checks.
- Make use of an Init Container to Prepare the Pod
- A pod may contain multiple init containers with each container performing a specific initializing task.
- Apply Node/Pod Affinity and Anti-Affinity Rules
- Take Advantage of Auto Scalers
- Kubernetes has similar auto-scaling capabilities for the deployments in the form of [horizontal pod autoscaler](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/) (HPA), [vertical pod autoscaler](https://github.com/kubernetes/autoscaler/tree/master/vertical-pod-autoscaler#install-command) (VPA), and [cluster auto-scaling](https://github.com/kubernetes/autoscaler/tree/master/cluster-autoscaler).

### Characteristics of a regular Pod which is stateless

- Pods are scaled out and scaled in through a [Replica Set](http://kubernetes.io/docs/user-guide/replicasets/).
- Pods will be assigned an arbitrary name at runtime.
- Each pod may be scheduled on any available Node unless an affinity rule is in effect.
- Pods may be restarted and relocated at any point of time.
- Pods may never be referenced directly by the name or IP address.
- A [service](http://kubernetes.io/docs/user-guide/services/) selects a set of pods that match specific criterion and exposes them through a well-defined endpoint.
- Any request targeting the pod(s) goes through the Service, that routes the traffic to one of the pods.

## Ref

- https://kubebyexample.com/learning-paths/kubernetes-fundamentals/liveness-and-readiness-probes