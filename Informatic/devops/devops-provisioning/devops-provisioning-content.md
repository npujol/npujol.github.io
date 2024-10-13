---
tags:
  - roadmap
  - Informatic
  - devops
  - ready
  - online
---

# devops-provisioning

## Contents

- [[devops-provisioning-aws-cdk]]
- [[devops-provisioning-cloudformation]]
- [[devops-provisioning-pulumi]]
- [[devops-provisioning-terraform]]

__Roadmap info from [roadmap website](https://roadmap.sh/devops/provisioning@V9sOxlNOyRp0Mghl7zudv)__

## Provisioning

Provisioning refers to the process of setting up and configuring the necessary IT infrastructure to support an application or service. This includes allocating and preparing resources such as servers, storage, networking, and software environments. Provisioning can be done manually, but in modern DevOps practices, it’s typically automated using tools like Terraform, Pulumi, or CloudFormation. These tools allow for infrastructure-as-code, where the entire provisioning process is defined in version-controlled scripts or templates. This approach enables consistent, repeatable deployments across different environments, reduces human error, and facilitates rapid scaling and disaster recovery.

Learn more from the following resources:

Free Resources

---

- [articleWhat is provisioning? - RedHat](https://www.redhat.com/en/topics/automation/what-is-provisioning)
- [articleWhat is provisioning? - IBM](https://www.ibm.com/topics/provisioning)
- [videoOpen Answers: What is provisioning?](https://www.youtube.com/watch?v=hWvDlmhASpk)

### __Comparison: Key Differences__

| Feature                | __Terraform__                               | __Pulumi__                                  | __Nomad__                                  |
|------------------------|---------------------------------------------|---------------------------------------------|--------------------------------------------|
| __Primary Use__         | Infrastructure provisioning (IaC)           | Infrastructure provisioning (IaC) with code | Application and container orchestration    |
| __Language__            | HCL (Declarative)                           | General-purpose programming languages       | HCL (Declarative)                          |
| __Multi-Cloud Support__ | Excellent (AWS, Azure, GCP, Kubernetes)     | Excellent (AWS, Azure, GCP, Kubernetes)     | Limited (Mostly datacenter, on-prem, cloud)|
| __State Management__    | Built-in with Terraform Cloud               | Managed by Pulumi or self-hosted            | Not applicable (used for application workloads) |
| __Complexity__          | Moderate                                    | Easy to Moderate (depending on familiarity) | Moderate (simpler than Kubernetes)         |
| __Pricing__             | Free + Paid for collaboration features      | Free + Paid for collaboration features      | Free (Open-source) + Paid for enterprise   |
| __Best Use Case__       | Multi-cloud infrastructure management       | Dev-focused IaC with complex logic support  | Lightweight container and workload orchestration |
| __Workload Management__ | No                                           | No                                          | Yes (supports containers, binaries, VMs)   |
| __Integration__         | Integrates with Terraform Cloud, Vault, etc.| Integrates with various SDKs and libraries  | Integrates with Consul, Vault, Docker      |

---

### __Key Takeaways__

- __Terraform__ is the go-to for __multi-cloud infrastructure provisioning__, with a declarative syntax and excellent support for various cloud providers. It’s best when you need to manage infrastructure across multiple platforms in a consistent, scalable way.
  
- __Pulumi__ is ideal for __developers__ who want to use programming languages to define infrastructure, allowing them to write logic in their infrastructure code. It's excellent when you need complex logic in IaC.

- __Nomad__ is a __simplified alternative to Kubernetes__ for scheduling and running containers, VMs, and other workloads. It’s particularly suited for teams that want orchestration without Kubernetes’ complexity.

Each tool serves a different purpose: Terraform and Pulumi are focused on __infrastructure provisioning__, while Nomad is a __workload orchestrator__. Choosing between them depends on whether you need to __provision infrastructure (Terraform/Pulumi)__ or __orchestrate workloads (Nomad)__.

## Example

### 1. __Terraform Example (AWS EKS + PostgreSQL)__

This Terraform script sets up an __AWS EKS cluster__ and a __PostgreSQL RDS__ instance.

```hcl
# main.tf

provider "aws" {
  region = "us-west-2"
}

# Create a VPC
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = "my-vpc"
  cidr   = "10.0.0.0/16"
}

# Create an EKS cluster
module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "my-eks-cluster"
  cluster_version = "1.25"
  subnets         = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id
  manage_aws_auth = true
  worker_groups = [
    {
      instance_type = "t3.medium"
      asg_max_size  = 3
    }
  ]
}

# Create a PostgreSQL RDS instance
resource "aws_db_instance" "postgres" {
  identifier        = "my-postgres-db"
  engine            = "postgres"
  instance_class    = "db.t3.micro"
  allocated_storage = 20
  name              = "mydb"
  username          = "postgresadmin"
  password          = "Password123"
  parameter_group_name = "default.postgres13"
  skip_final_snapshot = true
  vpc_security_group_ids = [module.vpc.default_security_group_id]
  db_subnet_group_name   = module.vpc.default_db_subnet_group
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "postgres_db_endpoint" {
  value = aws_db_instance.postgres.endpoint
}
```

### 2. __Nomad Example (AWS EKS + PostgreSQL)__

This Nomad configuration runs PostgreSQL and a __Nomad task__ inside a __Kubernetes cluster (AWS EKS)__.

```hcl
# kubernetes.nomad

job "k8s-postgres" {
  datacenters = ["dc1"]
  type = "service"

  group "postgres" {
    task "run-postgres" {
      driver = "kubernetes"

      config {
        pod {
          metadata {
            name = "postgres-pod"
          }
          spec {
            containers {
              name  = "postgres"
              image = "postgres:13"
              env {
                name  = "POSTGRES_USER"
                value = "admin"
              }
              env {
                name  = "POSTGRES_PASSWORD"
                value = "Password123"
              }
              ports {
                name = "db"
                containerPort = 5432
              }
            }
          }
        }
      }
    }
  }

  group "app" {
    task "run-app" {
      driver = "kubernetes"

      config {
        pod {
          metadata {
            name = "my-app-pod"
          }
          spec {
            containers {
              name  = "my-app"
              image = "my-app-image:latest"
              ports {
                name = "http"
                containerPort = 8080
              }
            }
          }
        }
      }
    }
  }
}
```

### 3. __Pulumi Example (AWS EKS + PostgreSQL)__

This Pulumi code creates an __AWS EKS cluster__ and a __PostgreSQL RDS__ instance in Python.

```python
import pulumi
import pulumi_aws as aws
import pulumi_eks as eks

# Create a VPC for EKS
vpc = aws.ec2.Vpc('my-vpc',
    cidr_block='10.0.0.0/16',
    enable_dns_support=True,
    enable_dns_hostnames=True)

subnet = aws.ec2.Subnet('my-subnet',
    vpc_id=vpc.id,
    cidr_block='10.0.1.0/24',
    availability_zone='us-west-2a')

# Create an EKS cluster
cluster = eks.Cluster('my-cluster',
    vpc_id=vpc.id,
    subnet_ids=[subnet.id],
    instance_type='t3.medium',
    desired_capacity=2,
    min_size=1,
    max_size=3)

# Create a PostgreSQL RDS instance
db = aws.rds.Instance('my-postgres-db',
    engine='postgres',
    instance_class='db.t3.micro',
    allocated_storage=20,
    name='mydb',
    username='postgresadmin',
    password='Password123',
    skip_final_snapshot=True)

# Export the cluster and DB details
pulumi.export('eks_cluster_endpoint', cluster.endpoint)
pulumi.export('postgres_db_endpoint', db.endpoint)
```

---

### __Summary of Tools__

1. __Terraform__: Declarative tool with vast support for infrastructure, including AWS. Suitable for detailed infrastructure management and best for those already familiar with `HCL`.
2. __Nomad__: HashiCorp’s orchestrator that runs across both Kubernetes and traditional server applications, making it flexible for different workloads.
3. __Pulumi__: Uses programming languages like Python, TypeScript, and Go for infrastructure as code, offering a more intuitive experience for developers familiar with these languages.
