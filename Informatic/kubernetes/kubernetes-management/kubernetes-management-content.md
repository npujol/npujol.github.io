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