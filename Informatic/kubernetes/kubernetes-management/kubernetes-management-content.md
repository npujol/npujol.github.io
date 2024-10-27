---
tags:
  - roadmap
  - Informatic
  - kubernetes
  - ready
  - online
---

# kubernetes-management

## Contents

- [[kubernetes-management-config-maps]]
- [[kubernetes-management-secrets]]
- [[kubernetes-management-setting-resource-requests-and-limits]]
- [[kubernetes-management-assigning-quotas-to-namespaces]]
- [[kubernetes-management-monitoring-and-optimizing-resource-usage]]

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/management)__

## Configuration Management

Configuration management in Kubernetes (K8s) is the process of defining and managing the configuration of your applications running in a K8s cluster. K8s provides several mechanisms for managing configuration, including __ConfigMaps__ and __Secrets__, and supports several ways to inject configuration into your application’s containers. Configuration management is tightly integrated with other Kubernetes features and is critical for building scalable and reliable applications in Kubernetes.

## Resources

- [officialConfiguration Management with Containers](https://kubernetes.io/blog/2016/04/configuration-management-with-containers/)
- [videoConfiguration Management in Kubernetes for Beginners](https://www.youtube.com/watch?v=o-gXx7r7Rz4)

### Key Differences in Best Practices

- __Security__: Secrets require more stringent access controls and encryption than ConfigMaps.
- __Encryption__: Secrets should always be encrypted, while ConfigMaps do not offer encryption by default.
- __Version Control__: Avoid storing both in version control, but it's especially critical for Secrets due to their sensitive nature.

## Resource Management

Resource management in Kubernetes involves managing CPU, memory, and storage resources to ensure efficient and effective use of resources. Kubernetes provides several features and tools, including resource __quotas__, __limits__, __node affinity__ and __anti-affinity__, horizontal and vertical pod autoscaling, and cluster autoscaling to manage resources effectively. These features help ensure that resources are allocated fairly, resource contention is avoided, and pods have access to the resources they need. By using these features, Kubernetes can efficiently manage resources, leading to better performance, improved reliability, and reduced costs.

## Resources

- [officialManaging Resources - Documentation](https://kubernetes.io/docs/concepts/cluster-administration/manage-deployment/)
- [articleManaging Kubernetes resources: 5 things to remember](https://enterprisersproject.com/article/2020/8/managing-kubernetes-resources-5-things-remember)

### Understanding Kubernetes Object Model and Declarative Management

To grasp how Kubernetes operates, it's essential to understand two key concepts:

1. __Kubernetes Object Model__:
   - Each item that Kubernetes manages (such as a pod or service) is represented by an __object__. Objects reflect both the __desired state__ (how you want the object to behave) and the __current state__ (how the object is actually behaving).
   - Kubernetes objects have two critical components:
     - __Object Spec__: This defines the __desired state__ of the object (e.g., how many replicas, what containers should be run).
     - __Object Status__: This reflects the __current state__ as reported by the Kubernetes __control plane__.
   - __Pods__ are the smallest deployable object in Kubernetes. They represent one or more containers and share the same networking and storage resources.

2. __Declarative Management__:
   - In Kubernetes, you define the desired state of the objects, and Kubernetes ensures that the system matches that state. This is done through a continuous __watch loop__, where the Kubernetes __control plane__ monitors and adjusts the system as needed.
   - Kubernetes follows the __declarative management__ approach, meaning you declare the state (through YAML or JSON files), and Kubernetes automatically maintains it
3. __Kubernetes Components__:
   - __Control Plane__: Manages the Kubernetes cluster, handling the scheduling and orchestration of pods. Components include:
     - __kube-apiserver__: The API server, which is the entry point for all administrative tasks.
     - __etcd__: The key-value store that holds cluster configuration data.
     - __kube-scheduler__: Decides which node should run a newly created pod.
     - __kube-controller-manager__: Manages control loops that regulate the system's state.
   - __Nodes__: Worker machines that run the application workloads (pods) and interact with the control plane.
4. __Kubernetes Object Management__:
   - Kubernetes objects can be managed in several ways:
     - __Imperative Commands__: These allow you to perform actions immediately via the Kubernetes CLI (e.g., `kubectl apply`, `kubectl delete`). This is typically used for quick fixes or testing.
     - __Declarative Files__: Using YAML/JSON files to describe your workloads and desired states allows for more stable, repeatable, and scalable management of Kubernetes environments.
   - You'll use tools like `kubectl`, the Kubernetes CLI, to interact with your clusters and manage workloads.
