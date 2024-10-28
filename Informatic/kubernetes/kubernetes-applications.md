---
tags:
  - roadmap
  - Informatic
  - kubernetes
  - ready
  - online
---

# kubernetes-applications

## Contents

- [[kubernetes-applications-pods]]
- [[kubernetes-applications-replicasets]]
- [[kubernetes-applications-deployments]]
- [[kubernetes-applications-statefulsets]]
- [[kubernetes-applications-jobs]]

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/applications)__

## Running Applications

For running application in a Kubernetes cluster, you need to define Kubernetes objects such as __Deployment__ or __StatefulSet__, __Service__, and __ConfigMap__ or __Secret__ using YAML files. The Deployment or StatefulSet defines the container image, container ports, and other settings. The Service provides a stable IP address and DNS name to access the application, while the ConfigMap or Secret contains configuration data or sensitive information. To deploy the application, use kubectl apply to create or update the Kubernetes objects. Kubernetes automatically manages the deployment, scaling, and networking of the application based on the YAML files. Monitoring and modification can be done through kubectl commands.

Learn more from the following link:

- [officialRun Application - Documentation](https://kubernetes.io/docs/tasks/run-application/)
- [videoKubernetes Tutorial | Run & Deploy Spring Boot Application](https://www.youtube.com/watch?v=7o7e8OAAWyg)