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
