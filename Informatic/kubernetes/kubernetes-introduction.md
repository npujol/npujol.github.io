---
tags:
- roadmap
- Informatic
- kubernetes
- ready
- flexibility
- portability
- containerized
- orchestration
- online
---

# kubernetes-introduction

## Contents

- [[kubernetes-introduction-kubernetes-overview]]
- [[kubernetes-introduction-why-kubernetes]]
- [[kubernetes-introduction-key-concepts-terminologies]]
- [[kubernetes-introduction-kubernetes-alternatives]]

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/introduction)__

## Kubernetes Introduction

Kubernetes, also known as __k8s__, is an open-source container __orchestration__ platform that automates the deployment, scaling, and management of __containerized applications__. It provides a way to abstract the underlying infrastructure and __manage applications at scale__, while also offering __flexibility__, __portability__, and a rich feature set. Kubernetes has become the de facto standard for container orchestration due to its widespread adoption, active community, and ability to handle complex, multi-tiered applications.

### Free Resources

- officialKubernetes Documentation
- articleIntroduction of Kubernetes
- videoKubernetes Tutorial for Beginners
- feedExplore top posts about Kubernetes

## Setting Up Kubernetes

To set up a Kubernetes cluster, you need to choose a deployment environment, install Kubernetes components on each node, configure networking using a plugin, initialize the master node with `kubeadm init`, join worker nodes using `kubeadm join`, deploy applications with manifests, and manage the cluster using `kubectl` or a management tool.

Learn more from the following resources:

- [officialSet up a K8s cluster](https://kubernetes.io/docs/home/#set-up-a-k8s-cluster)
- [videoKubernetes | Cluster Setup](https://www.youtube.com/watch?v=z_w3me8tmJA)
- [feedExplore top posts about Kubernetes](https://app.daily.dev/tags/kubernetes?ref=roadmapsh)

## Installing a Local Cluster

To install and configure a Kubernetes cluster on CentOS 7 or Ubuntu, you would need to setup the prerequisites and requirements for setting up a Kubernetes cluster after which you would be installing the Kubernetes components, including Kubeadm, Kubelet, and Kubectl and then you’ll need to connect the master and the worker nodes. Once the connection is established you can check it by deploying application on the cluster.

## Resources

- [articleHow to Install a Kubernetes Cluster on CentOS 7](https://www.tecmint.com/install-kubernetes-cluster-on-centos-7/)
- [articleHow To Create a Kubernetes Cluster Using on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-create-a-kubernetes-cluster-using-kubeadm-on-ubuntu-20-04)
- [articleDeploy a Kubernetes Cluster on Ubuntu Server with Microk8s](https://thenewstack.io/deploy-a-kubernetes-cluster-on-ubuntu-server-with-microk8s/)

## Choosing a Managed Provider

A managed provider is a cloud-based service that provides a managed Kubernetes environment. This means that the provider handles the underlying infrastructure, such as servers, storage, and networking, as well as the installation, configuration, and maintenance of the Kubernetes cluster.

When choosing a managed Kubernetes provider, consider the cloud provider you are using, features and capabilities, pricing and billing, support, security and compliance, and the provider’s reputation and reviews. By taking these factors into account, you can select a provider that meets your needs and offers the best value for your organization.

Learn more from the following resources:

- [articleChoosing a Managed Kubernetes Provider](https://containerjournal.com/features/choosing-a-managed-kubernetes-provider/)

```markdown
| Key Consideration                    | Description                                                                 |
|--------------------------------------|-----------------------------------------------------------------------------|
| __Ease of Use__                      | Providers offer varying degrees of automation and support; ease of deployment matters. |
| __Multi-Cloud and Hybrid Support__   | Some providers offer better multi-cloud or hybrid deployment options than others. |
| __Integration with Native Services__ | The ability to seamlessly integrate with native cloud services is crucial for complex workloads. |
| __Cost Considerations__              | Pricing models vary significantly, so cost transparency and predictability are key. |
| __Security Features__                | Built-in security measures and compliance support vary by provider.         |
| __Support and SLAs__                 | Availability of support and service-level agreements (SLAs) affect reliability and operational confidence. |
| __Scalability and Performance__      | Different providers offer varying capabilities for scaling workloads efficiently. |
```

- [articleAmazon Web Services Gears Elastic Kubernetes Service for Batch Work](https://thenewstack.io/amazon-web-services-gears-elastic-kubernetes-service-for-batch-jobs/)
- [articleHow to Build The Right Platform for Kubernetes](https://thenewstack.io/kubernetes/kubernetes-infrastructure-architecture/)

### Compare Kubernetes providers

| Provider           | Ease of Use              | Multi-Cloud/Hybrid | Integration with Native Services | Cost                  | Security Features        | Support and SLAs      | Scalability and Performance |
|--------------------|--------------------------|--------------------|----------------------------------|-----------------------|--------------------------|------------------------|-----------------------------|
| __AWS EKS__        | Moderate                 | Strong hybrid (Outposts) | Excellent (AWS services)         | Pay-as-you-go, complex | Advanced security options | Robust SLAs and support | High scalability            |
| __GKE__            | Easy (strong automation) | Multi-cloud support (Anthos) | Excellent (Google Cloud services) | Transparent pricing    | Strong security built-in  | Good support              | High performance and scale  |
| __Azure AKS__      | Easy (integrated with Azure tools) | Hybrid support (Azure Stack) | Excellent (Azure services)       | Competitive pricing    | Comprehensive security    | Good support              | High scalability            |
| __IBM Cloud__      | Moderate                 | Hybrid support (Red Hat OpenShift) | Decent integrations             | Competitive pricing    | Enterprise-grade security | Strong enterprise support | Solid scalability           |

## Deploying your First Application

To deploy your first application in Kubernetes, you need to create a deployment and service manifest in YAML files, apply the manifests to your Kubernetes cluster using the kubectl apply command, verify that your application’s pods are running with kubectl get pods, and test the service with kubectl get services and accessing the service using a web browser or a tool like cURL. There are also various tools and platforms available that can simplify application deployment in Kubernetes, such as Helm charts and Kubernetes operators.

## Resources

- [officialUsing kubectl to Create a Deployment](https://kubernetes.io/docs/tutorials/kubernetes-basics/deploy-app/deploy-intro/)
- [articleDeploying An Application On Kubernetes From A to Z](https://web.archive.org/web/20230326150953/https://www.weave.works/blog/deploying-an-application-on-kubernetes-from-a-to-z)
- [articleKubernetes 101: Deploy Your First Application with MicroK8s](https://thenewstack.io/kubernetes-101-deploy-your-first-application-with-microk8s/)
- [videoKubernetes Tutorial | Your First Kubernetes Application](https://www.youtube.com/watch?v=Vj6EFnav5Mg)
- [videoKubernetes 101: Deploying Your First Application](https://www.youtube.com/watch?v=XltFOyGanYE)

### How Does `kubectl` Work?

`kubectl` communicates directly with the Kubernetes __API server__ that manages the cluster’s control plane. When you issue a command, `kubectl` interacts with the __Kubernetes API__ to retrieve information or make changes to the state of the cluster.

### Why is `kubectl` Important?

- __Cluster Management__: It simplifies managing Kubernetes resources such as Pods, services, and deployments by converting command-line inputs into API calls that are sent to the Kube API server.
- __Automation__: `kubectl` allows for automation of tasks, such as scaling applications or managing configurations, which are crucial for maintaining cluster reliability and performance.
- __Troubleshooting__: It provides the ability to introspect and troubleshoot running Kubernetes workloads by retrieving logs, monitoring events, and inspecting the status of various components.

### How `kubectl` Works

`kubectl` communicates with the __Kube API server__ over HTTPS. The process can be broken down as follows:

1. The user issues a `kubectl` command (e.g., `kubectl get pod`).
2. `kubectl` transforms the command into an API request and sends it to the __Kube API server__ over HTTPS.
3. The __Kube API server__ processes the request by querying __etcd__, the cluster's database.
4. The __Kube API server__ sends the response back to `kubectl`.
5. `kubectl` interprets the API response and displays it in a readable format for the user.

### `kubectl` Configuration

To use `kubectl`, it must first be configured with the location and credentials of a Kubernetes cluster. Configuration details are stored in the user's home directory, specifically in `~/.kube/config`. This file contains information about:

- __Clusters__: List of available Kubernetes clusters.
- __Contexts__: Specific combinations of clusters, namespaces, and user credentials.
- __Credentials__: User authentication information.

#### Viewing Configuration

To inspect the current `kubectl` configuration:

```bash
kubectl config view
```

This command displays the configuration of the `kubectl` tool itself, while other `kubectl` commands show configurations of the cluster or workloads.

### Key `kubectl` Syntax

`kubectl` commands follow a consistent syntax pattern:

```bash
kubectl [command] [TYPE] [NAME] [flags]
```

- __Command__: The action to be performed, such as `get`, `describe`, `apply`, `delete`, or `logs`.
- __TYPE__: The type of Kubernetes object, such as `pod`, `service`, `deployment`, or `node`.
- __NAME__: The name of the specific object (optional, especially for listing commands).
- __Flags__: Optional arguments to modify the command output or behavior, such as `-o=yaml` for YAML output or `--context` to specify a different cluster context.

#### Example Commands

- __List all Pods__:

  ```bash
  kubectl get pods
  ```

- __Get information on a specific Pod__:

  ```bash
  kubectl get pod my-test-app
  ```

- __Show detailed information about a Pod__:

  ```bash
  kubectl describe pod my-test-app
  ```

- __View Pod details in YAML format__:

  ```bash
  kubectl get pod my-test-app -o=yaml
  ```

- __Get Pods with additional node information__:

  ```bash
  kubectl get pods -o=wide
  ```

### Practical Uses of `kubectl`

- __Creating Kubernetes Objects__: Apply configurations via manifest files (YAML/JSON) to create Pods, services, and other Kubernetes objects.

  ```bash
  kubectl apply -f [manifest_file.yaml]
  ```

- __Viewing and Deleting Objects__: Inspect the state of resources and delete them when necessary.

  ```bash
  kubectl delete pod [POD_NAME]
  ```

- __Viewing Logs__: Retrieve logs from running Pods for troubleshooting.

  ```bash
  kubectl logs [POD_NAME]
  ```

- __Exporting Configurations__: Use `-o=yaml` to export configuration details for recreating or troubleshooting in another cluster.

### Introspection in Kubernetes with `kubectl`

Introspection is the process of gathering information about the state of your applications running within a Kubernetes cluster. Using `kubectl`, you can gather detailed insights about Pods, containers, and services to troubleshoot and debug issues effectively.

### Key `kubectl` Commands for Introspection

1. __Get Pods__
   - Command: `kubectl get pods`
   - This command lists all the Pods in the current namespace, showing their status, which can be one of the following:
     - __Pending__: The Pod is accepted but not yet scheduled.
     - __Running__: The Pod is successfully attached to a node and is running its containers.
     - __Succeeded__: All containers in the Pod have terminated successfully and will not restart.
     - __Failed__: One or more containers in the Pod terminated with a failure and will not restart.
     - __Unknown__: The state of the Pod cannot be determined due to communication issues.
     - __CrashLoopBackOff__: The Pod's container is crashing repeatedly.

2. __Describe Pod__
   - Command: `kubectl describe pod [POD_NAME]`
   - This command provides detailed information about a specific Pod, including:
     - Pod status
     - Node name
     - Labels
     - Container states (waiting, running, or terminated)
     - Resource requirements
     - IP addresses
     - Events related to the Pod (e.g., failed scheduling or image pull errors)

3. __Execute Command in a Container__
   - Command: `kubectl exec [POD_NAME] -- [COMMAND]`
   - Use this command to run a single command inside a container. This is useful for executing diagnostic commands like `ping` or `curl`.
   - __Interactive Shell__: For an interactive shell session, use the `-it` switch:

     ```bash
     kubectl exec -it [POD_NAME] -- /bin/bash
     ```

   - Here, `-i` enables interactive mode and `-t` allocates a TTY.

4. __View Logs__
   - Command: `kubectl logs [POD_NAME]`
   - This command retrieves the logs from the specified Pod, providing insights into what is happening inside the application.
   - If the Pod contains multiple containers, specify which container to get logs from using the `-c` flag:

     ```bash
     kubectl logs [POD_NAME] -c [CONTAINER_NAME]
     ```

### Best Practices for Debugging

- __Avoid Directly Installing Software in Containers__: While you can use `kubectl exec` to install tools for debugging, it's not recommended. Changes made this way are ephemeral and will be lost when the container restarts.
- __Build Custom Container Images__: Instead of making temporary fixes, create new container images that include the necessary tools or configurations, and then redeploy them.
- __Integrate Findings__: Use the insights gained from introspection to make informed changes to your container images and application configurations.
