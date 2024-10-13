---
tags:
  - roadmap
  - Informatic
  - devops
  - ready
  - online
  - container
  - docker
  - devops-container-orchestration
---

# devops-container-orchestration

## Contents

- [[devops-container-orchestration-gke-eks-aks]]
- [[devops-container-orchestration-aws-ecs-fargate]]
- [[devops-container-orchestration-docker-swarm]]
- [[devops-container-orchestration-kubernetes]]

__Roadmap info from [roadmap website](https://roadmap.sh/devops/container-orchestration@zuBAjrqQPjj-0DHGjCaqT)__
## Containers

Containers are a construct in which cgroups, namespaces, and chroot are used to fully encapsulate and isolate a process. This encapsulated process, called a container image, shares the kernel of the host with other containers, allowing containers to be significantly smaller and faster than virtual machines, These images are designed for portability, allowing for full local testing of a static image, and easy deployment to a container management platform.

Visit the following resources to learn more:

Free Resources

---

- [articleWhat are Containers?](https://cloud.google.com/learn/what-are-containers)
- [articleWhat is a Container?](https://www.docker.com/resources/what-container/)
- [articleArticles about Containers - The New Stack](https://thenewstack.io/category/containers/)
- [videoWhat are Containers?](https://www.youtube.com/playlist?list=PLawsLZMfND4nz-WDBZIj8-nbzGFD4S9oz)
- [feedExplore top posts about Containers](https://app.daily.dev/tags/containers?ref=roadmapsh)

## Comparison

| **Technology**                                      | **Description**                                                                                              | **Characteristics**                                                                                                                                                                   | **Use Cases**                                                                                                                                       | **Other Tech Affinity**                                                                                                          |
|-----------------------------------------------------|--------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **GKE / EKS / AKS**                                 | Managed Kubernetes services provided by Google Cloud (GKE), Amazon Web Services (EKS), and Azure (AKS) for container orchestration.                | - Fully managed Kubernetes clusters <br> - Auto-scaling, load balancing, and self-healing <br> - Native integrations with cloud services (networking, storage, security).                | - Cloud-native applications with microservices architectures <br> - Enterprises needing scalability and availability <br> - Multi-cloud or hybrid cloud environments. | - Integrates with other cloud services (e.g., AWS IAM, Azure AD, GCP IAM) <br> - Works with CI/CD tools (Jenkins, GitLab CI) <br> - Helm for Kubernetes package management |
| **AWS ECS / Fargate**                               | Amazon’s container orchestration service (ECS) and its serverless version (Fargate) for managing Docker containers in the cloud.                  | - ECS: Cluster-based orchestration <br> - Fargate: Serverless, no cluster management needed <br> - Deep AWS ecosystem integration <br> - Built-in security (IAM, VPC, etc.).             | - Simplified container management on AWS <br> - Serverless applications (Fargate) <br> - Managing containerized workloads without maintaining infrastructure.         | - Integrates with AWS services like CloudWatch, IAM, VPC, RDS <br> - Works well with CI/CD pipelines (AWS CodePipeline, GitHub Actions)                                   |
| **Docker Swarm**                                    | Docker’s native clustering and orchestration tool for managing containers at scale, designed for simplicity and ease of use.                       | - Easy setup and use <br> - Native Docker support <br> - Less complex than Kubernetes <br> - Built-in load balancing and clustering <br> - Limited scalability compared to Kubernetes.   | - Smaller scale or simpler container orchestration needs <br> - Development environments <br> - Organizations looking for simpler orchestration than Kubernetes.     | - Works natively with Docker Compose <br> - Integrates with Docker Hub <br> - Can be extended with monitoring tools (e.g., Prometheus, Grafana)                           |

### Key Highlights:
??
- **GKE / EKS / AKS** are fully managed Kubernetes services offered by Google, AWS, and Azure, providing powerful, scalable orchestration for containerized applications with deep cloud integrations.

- **AWS ECS / Fargate** simplifies container orchestration in AWS, with Fargate offering a serverless option that removes the need to manage the underlying infrastructure.

- **Docker Swarm** offers native Docker orchestration with an emphasis on simplicity, making it ideal for smaller-scale deployments or simpler container management, though it lacks the advanced features and scalability of Kubernetes.

## Kubernetes

[[kubernetes_Index]]

Kubernetes is an open source container management platform, and the dominant product in this space. Using Kubernetes, teams can deploy images across multiple underlying hosts, defining their desired availability, deployment logic, and scaling logic in YAML. Kubernetes evolved from Borg, an internal Google platform used to provision and allocate compute resources (similar to the Autopilot and Aquaman systems of Microsoft Azure). The popularity of Kubernetes has made it an increasingly important skill for the DevOps Engineer and has triggered the creation of Platform teams across the industry. These Platform engineering teams often exist with the sole purpose of making Kubernetes approachable and usable for their product development colleagues.

Visit the following resources to learn more:

Free Resources

---

- [officialKubernetes Website](https://kubernetes.io/)
- [OpenSourcekubernetes/kubernetes](https://github.com/kubernetes/kubernetes)
- [articlePrimer: How Kubernetes Came to Be, What It Is, and Why You Should Care](https://thenewstack.io/primer-how-kubernetes-came-to-be-what-it-is-and-why-you-should-care/)
- [articleKubernetes: An Overview](https://thenewstack.io/kubernetes-an-overview/)
- [video Complete Kubernetes Course - From BEGINNER to PRO](https://www.youtube.com/watch?v=2T86xAtR6Fo)
- [feedExplore top posts about Kubernetes](https://app.daily.dev/tags/kubernetes?ref=roadmapsh)