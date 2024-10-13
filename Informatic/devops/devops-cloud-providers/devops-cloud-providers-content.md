---
tags:
  - roadmap
  - Informatic
  - devops
  - ready
  - online
---

# devops-cloud-providers

## Contents

- [[devops-cloud-providers-aws]]
- [[devops-cloud-providers-azure]]
- [[devops-cloud-providers-google-cloud]]
- [[devops-cloud-providers-digital-ocean]]
- [[devops-cloud-providers-alibaba-cloud]]
- [[devops-cloud-providers-hetzner]]
- [[devops-cloud-providers-heroku]]
- [[devops-cloud-providers-contabo]]

__Roadmap info from [roadmap website](https://roadmap.sh/devops/cloud-providers@w5d24Sf8GDkLDLGUPxzS9)__

## Cloud Providers

Cloud providers provide a layer of APIs to abstract infrastructure and provision it based on security and billing boundaries. The cloud runs on servers in data centers, but the abstractions cleverly give the appearance of interacting with a single “platform” or large application. The ability to quickly provision, configure, and secure resources with cloud providers has been key to both the tremendous success and complexity of modern DevOps.

Visit the following resources to learn more:

- [articleCloud Service Provider](https://www.techtarget.com/searchitchannel/definition/cloud-service-provider-cloud-provider)
- [articleWhat are Cloud Providers?](https://www.redhat.com/en/topics/cloud-computing/what-are-cloud-providers)
- [feedExplore top posts about Cloud](https://app.daily.dev/tags/cloud?ref=roadmapsh)

### Containers solutions
### **1. Amazon Web Services (AWS)**

#### **Container Solutions**:
- **Amazon ECS (Elastic Container Service)**: Fully managed container orchestration.
- **Amazon EKS (Elastic Kubernetes Service)**: Fully managed Kubernetes service.
- **AWS Fargate**: Serverless compute engine for containers (used with ECS/EKS).

#### **Pricing**:
- **ECS**: 
  - Pay for underlying resources (EC2 or Fargate) used by containers.
  - **EC2**: Priced based on instance type, usage hours.
  - **Fargate**: Charged based on vCPU and memory used by containers (e.g., $0.04048 per vCPU/hr).
- **EKS**: 
  - $0.10 per cluster per hour, plus costs of the EC2 instances or Fargate.
  - Fargate usage billed separately (same as ECS Fargate pricing).

**Use Case**: Suitable for enterprises needing flexibility and large-scale container management with integrated AWS services.

### **2. Microsoft Azure**

#### **Container Solutions**:
- **Azure Kubernetes Service (AKS)**: Fully managed Kubernetes service.
- **Azure Container Instances (ACI)**: Serverless container solution.

#### **Pricing**:
- **AKS**: 
  - No charge for the managed Kubernetes control plane.
  - Pay for VMs or compute resources (e.g., B-series, D-series instances).
  - Example: B2ms instance ~$0.05/hr.
- **ACI**: 
  - Priced based on vCPU and memory used.
  - Example: $0.000012/vCPU-second, $0.0000035/GB-second.
  
**Use Case**: Ideal for businesses invested in Microsoft ecosystems and those wanting integrated CI/CD with Azure DevOps.

### **3. Google Cloud Platform (GCP)**

#### **Container Solutions**:
- **Google Kubernetes Engine (GKE)**: Managed Kubernetes service.
- **Cloud Run**: Fully managed serverless container service.

#### **Pricing**:
- **GKE**:
  - No charge for control plane with **Autopilot** mode (pay only for resources).
  - Standard mode control plane: $0.10 per cluster per hour.
  - Pay for node resources based on VM size (e.g., n1-standard-4: ~$0.19/hr).
- **Cloud Run**: 
  - Charged based on CPU and memory usage, plus requests.
  - Example: $0.000024/vCPU-second, $0.0000025/GB-second.

**Use Case**: Best for cloud-native applications, machine learning workloads, and scalable Kubernetes clusters.

### **4. DigitalOcean**

#### **Container Solutions**:
- **DigitalOcean Kubernetes (DOKS)**: Managed Kubernetes service.
- **App Platform**: Fully managed PaaS for containerized applications.

#### **Pricing**:
- **DOKS**:
  - $10/month for the control plane.
  - Pay for the worker nodes (droplets), e.g., Basic Droplets starting at $6/month.
- **App Platform**: 
  - $5/month (basic) or $12/month for scaling applications.

**Use Case**: Great for startups or small-to-medium-sized businesses seeking affordable Kubernetes and simplicity.

### **5. Alibaba Cloud**

#### **Container Solutions**:
- **Container Service for Kubernetes (ACK)**: Fully managed Kubernetes service.
- **Elastic Container Instance (ECI)**: Serverless container service.

#### **Pricing**:
- **ACK**: 
  - Pay for node instances (ECS) and managed Kubernetes services.
  - Example: ecs.c5.large (2 vCPU, 4GB) ~$0.08/hr.
- **ECI**: 
  - Charged based on vCPU and memory.
  - Example: $0.0475 per vCPU/hr, $0.0057 per GB/hr.

**Use Case**: Useful for organizations with operations in China or looking for hybrid cloud solutions.

### **6. Hetzner**

#### **Container Solutions**:
- **Hetzner Cloud with Kubernetes (via k3s)**: Not managed by Hetzner, but users can set up Kubernetes clusters using Hetzner's cloud VMs.
  
#### **Pricing**:
- Cloud servers (VMs): 
  - Starting at €3.49/month for CX11 (1 vCPU, 2GB RAM).
  - No managed Kubernetes service, so you need to configure Kubernetes manually.

**Use Case**: Excellent for developers or businesses looking for affordable cloud servers and are willing to manage their Kubernetes clusters independently.

### **7. Heroku**

#### **Container Solutions**:
- **Heroku Container Registry**: Deploy Docker images to Heroku dynos.
  
#### **Pricing**:
- **Free Tier**: Limited to hobbyist projects.
- **Paid Dynos**: Starts at $7/month for standard dynos.
  
**Use Case**: Great for small-scale apps, rapid prototyping, and projects that require simplicity over control.

### **8. Contabo**

#### **Container Solutions**:
- Contabo doesn't offer a **managed** container service (like Kubernetes).
- Customers can run containers on **virtual private servers (VPS)**.

#### **Pricing**:
- **VPS Pricing**: 
  - Starts at $6.99/month for 4 vCPUs, 8GB RAM.
  - No managed Kubernetes; you have to set up your container orchestration.

**Use Case**: Suitable for cost-conscious users who don’t need managed Kubernetes but want powerful and affordable VPS for container workloads.
### **Summary of Pricing and Use Cases**:

| Provider          | Managed Kubernetes | Serverless Containers     | Pricing (Starting)                | Best For                                         |
| ----------------- | ------------------ | ------------------------- | --------------------------------- | ------------------------------------------------ |
| **AWS**           | ECS, EKS           | Fargate                   | ECS Fargate: $0.04048/vCPU/hr     | Enterprises, complex, scalable applications      |
| **Azure**         | AKS                | ACI                       | AKS: Free control plane + VM cost | Microsoft-centric environments, hybrid solutions |
| **Google Cloud**  | GKE                | Cloud Run                 | GKE: $0.10/hr cluster + VMs       | Cloud-native apps, ML workloads, scalable infra  |
| **DigitalOcean**  | DOKS               | App Platform              | DOKS: $10/mo + Droplet            | Startups, small businesses, simplicity           |
| **Alibaba Cloud** | ACK                | ECI                       | ACK: $0.08/hr (ecs.c5.large)      | Asia-based workloads, hybrid infrastructure      |
| **Hetzner**       | No managed service | No serverless             | €3.49/mo for cloud VMs            | Low-cost DIY Kubernetes setups                   |
| **Heroku**        | No Kubernetes      | Heroku Container Registry | $7/mo for standard dyno           | Prototyping, small-scale apps                    |
| **Contabo**       | No managed service | No serverless             | $6.99/mo for VPS                  | Cost-conscious developers, manual setups         |
