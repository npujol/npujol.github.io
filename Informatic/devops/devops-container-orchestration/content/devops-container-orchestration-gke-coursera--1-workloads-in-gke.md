---
tags:
- devops-container-orchestration-gke-coursera
- gke
- google
- devops
- kubernetes
- ready
- online
- coursera
- course
---

# 1. **Workloads in GKE**

## Kubernetes Workload Management Overview

To understand how Kubernetes operates and deploys containerized applications, it's essential to grasp its core concepts, particularly how **Kubernetes expects you to describe workloads** and how you can interact with it.

### Key Concepts

1. **Kubernetes Object Model**:
   - Kubernetes uses an **object model** to represent your system's desired state. Each object is a record of intent, describing the desired state of some component of your system (e.g., applications, jobs, or load balancing).
   - Common Kubernetes objects include:
     - **Pods**: The smallest deployable units, which represent one or more containers.
     - **Deployments**: Manage stateless applications and handle scaling, updates, and rollbacks.
     - **Services**: Expose your applications to other services or external traffic.
     - **ConfigMaps and Secrets**: Store configuration data and sensitive information.

2. **Declarative Management**:
   - Kubernetes relies on **declarative configuration**, where you define the **desired state** of your applications, and Kubernetes works to ensure the actual state matches the desired state.
   - You provide this information through configuration files, typically written in YAML or JSON format.
   - This approach minimizes human errors and reduces the need for manual intervention. Kubernetes automatically ensures that your applications behave as intended, even in the event of failures.

3. **Kubernetes Components**:
   - **Control Plane**: Manages the Kubernetes cluster, handling the scheduling and orchestration of pods. Components include:
     - **kube-apiserver**: The API server, which is the entry point for all administrative tasks.
     - **etcd**: The key-value store that holds cluster configuration data.
     - **kube-scheduler**: Decides which node should run a newly created pod.
     - **kube-controller-manager**: Manages control loops that regulate the system's state.
   - **Nodes**: Worker machines that run the application workloads (pods) and interact with the control plane.

4. **Google Kubernetes Engine Concepts**:
   - GKE offers two modes:
     - **Autopilot Mode**: Simplifies cluster management by handling most of the infrastructure setup and configuration. This mode is great for users who want a hands-off experience.
     - **Standard Mode**: Provides more control over cluster configuration and node management, suitable for users who need to fine-tune their clusters.

5. **Kubernetes Object Management**:
   - Kubernetes objects can be managed in several ways:
     - **Imperative Commands**: These allow you to perform actions immediately via the Kubernetes CLI (e.g., `kubectl apply`, `kubectl delete`). This is typically used for quick fixes or testing.
     - **Declarative Files**: Using YAML/JSON files to describe your workloads and desired states allows for more stable, repeatable, and scalable management of Kubernetes environments.
   - You'll use tools like `kubectl`, the Kubernetes CLI, to interact with your clusters and manage workloads.

## **Google Kubernetes Engine Concepts**

- GKE offers two modes:
  - **Autopilot Mode**: Simplifies cluster management by handling most of the infrastructure setup and configuration. This mode is great for users who want a hands-off experience.
  - **Standard Mode**: Provides more control over cluster configuration and node management, suitable for users who need to fine-tune their clusters.
