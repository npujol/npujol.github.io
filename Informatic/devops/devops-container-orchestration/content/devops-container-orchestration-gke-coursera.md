---
tags:
- roadmap
- devops
- devops-container-orchestration
- gke
- google
- devops
- kubernetes
- ready
- online
- coursera
- course
---

# devops-container-orchestration-gke-coursera

- Coursera  [Architecting with Google Kubernetes Engine Specialization](https://www.coursera.org/specializations/architecting-google-kubernetes-engine)

## Contents

## 1. **Workloads in GKE**

- **Deployments**: How to configure, manage, and update deployments.
- **Jobs & CronJobs**: Automated tasks and scheduled jobs.
- **Scaling**: Both automatic and manual cluster scaling.
- **Affinity Configurations**: Node and pod affinity settings for workload distribution.

## 2. **Pod & Cluster Networking**

- **Service Creation & Load Balancing**: Configuration of load balancers.
- **Container-Native Load Balancing**: Handling traffic directly to containers.
- **GKE Networking**: Networking between pods, clusters, and services.

## 3. **Storage Abstractions**

- **StatefulSets**: Managing stateful applications.
- **ConfigMaps**: Decoupling configuration from pods.
- **Secrets**: Managing sensitive data.
- **Persistent Storage**: Configuring storage for long-term data.

## 4. **Authentication, Authorization & Security**

- **RBAC & IAM**: Role-based access control and Identity & Access Management.
- **Workload Identity**: Mapping workloads to identities.
- **Pod Security**: Implementing Pod Security Standards and Admission policies.

## 5. **Monitoring & Observability**

- **Google Cloud Observability Tools**: Monitoring performance and availability.
- **Kubernetes Logs**: How to inspect and manage logs.
- **Dashboards & Alerts**: Custom dashboards and alerts for system performance.

## 6. **Google Cloud Managed Storage Services**

- **Cloud Storage vs. Self-Managed Storage**: Key differences and use cases.
- **Cloud SQL**: Using the Cloud SQL Auth Proxy and integrating with GKE.
- **Other Databases**: Exploring Google Cloud's managed database services.

## 7. **CI/CD Pipelines**

- **Continuous Integration & Delivery**: Optimizing app releases.
- **Code Management**: Best practices for source repositories and CI/CD pipelines.

### Overview of Cloud Computing

Cloud computing offers a method of using IT with five key characteristics:

1. **On-Demand and Self-Service**: Users can obtain computing resources (processing power, storage, network) through a web interface without needing human intervention.
2. **Internet Access**: Resources are accessible from anywhere with an internet connection.
3. **Resource Pooling**: Cloud providers allocate resources from a large pool, allowing cost savings through bulk purchasing. Customers don’t need to know the physical location of resources.
4. **Elasticity**: Resources are flexible, allowing customers to scale up or down quickly based on their needs.
5. **Pay-As-You-Go**: Customers only pay for the resources they use or reserve. When usage stops, payments stop.

Google Cloud offers various services for architects and developers, ranging from traditional options like virtual machines to modern paradigms like **Google Kubernetes Engine**. A common first request is running code in the cloud, which Google Cloud provides through several computing service options.

### Summary: Google Cloud Compute Services Overview

Google Cloud offers a variety of computing services designed to meet different needs. Here's an overview of each:

1. **Compute Engine** (IaaS)
   - Provides virtual machines (VMs) with customizable configurations.
   - Offers persistent disks and local SSDs for storage, along with features like autoscaling and global load balancing.
   - Ideal for developers who need complete control over infrastructure or for migrating on-premises workloads.
   - Supports per-second billing and preemptible VMs for cost-saving in short-duration workloads.

2. **Google Kubernetes Engine (GKE)**
   - Runs containerized applications in the cloud.
   - Containers package code and dependencies for efficient deployment and scaling.
   - Focuses on managing containerized workloads across a cloud environment, making it ideal for modern, scalable applications.

3. **App Engine** (PaaS)
   - A fully managed platform for running applications without needing to manage the underlying infrastructure.
   - Developers upload code, and App Engine automatically deploys the necessary infrastructure.
   - Supports popular programming languages and provides built-in integration with Google Cloud services like monitoring and error reporting.
   - Best for developers who want to focus solely on application logic rather than infrastructure management.
   - Use cases: websites, mobile app backends, gaming backends, and presenting RESTful APIs.

4. **Cloud Functions** (FaaS)
   - Event-driven, serverless compute service designed for small, single-purpose functions that respond to cloud events.
   - Code is automatically deployed when events (like a file upload) occur.
   - Supports several languages and is ideal for microservices, real-time file processing, and integrating with other cloud services.
   - Charges based on execution time to the nearest 100 milliseconds and offers a perpetual free tier.

5. **Cloud Run**
   - A serverless compute platform that runs stateless containers via web requests or events like Pub/Sub.
   - Built on Knative, allowing flexibility across environments.
   - Automatically scales from zero to handle incoming traffic and charges only for resources used.
   - Ideal for developers seeking fast, scalable deployment without managing infrastructure.

These services provide options based on infrastructure control, containerization, serverless execution, or fully managed environments.

### Comparison Table: Google Cloud Compute Services

| **Service**                        | **Type**                                     | **Key Features**                                                                                                                                                                                                                    | **Use Cases**                                                                                                                                                                                            |
| ---------------------------------- | -------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Compute Engine**                 | IaaS (Infrastructure as a Service)           | - Virtual machines (VMs) with full control over OS and infrastructure.           <br> - Persistent disks and local SSDs for storage. <br> - Autoscaling and global load balancing. <br> - Preemptible VMs for cost savings.         | - Running applications that need custom OS or infrastructure. <br> - Migrating on-premise workloads to the cloud without modifications. <br> - Batch processing jobs that run for short periods of time. |
| **Google Kubernetes Engine (GKE)** | Managed Kubernetes (Container orchestration) | - Manages containerized applications. <br> - Kubernetes-based architecture. <br> - Autoscaling and workload orchestration.                                                                                                          | - Running containerized applications. <br> - Large-scale, distributed applications requiring orchestration.                                                                                              |
| **App Engine**                     | PaaS (Platform as a Service)                 | - Fully managed platform with no infrastructure management. <br> - Supports multiple languages (Java, Node.js, Python, PHP, etc.). <br> - Integrated monitoring, logging, and error reporting. <br> - Autoscaling.                  | - Web and mobile applications. <br> - Gaming backends. <br> - RESTful APIs. <br> - Applications needing version control and traffic splitting.                                                           |
| **Cloud Functions**                | FaaS (Functions as a Service)                | - Event-driven, serverless functions. <br> - Responds to cloud events (e.g., file uploads). <br> - Scales automatically and charges based on execution time.                                                                        | - Microservices architectures. <br> - Real-time file processing (e.g., image or video processing). <br> - Integrating with other cloud services. <br> - IoT backends.                                    |
| **Cloud Run**                      | Serverless (Container-based)                 | - Runs stateless containers via HTTP requests or Pub/Sub events. <br> - Fully managed with automatic scaling. <br> - Built on Knative for portability across environments. <br> - Charges based on resource use (100ms increments). | - Stateless, containerized applications. <br> - Serverless APIs and web applications. <br> - Event-driven architectures.                                                                                 |

### Summary: Google Cloud Projects, Resource Hierarchy, and IAM

- **Projects**:
  - Every Google Cloud resource must belong to a **project**, which acts as a container for organizing resources, managing billing, and controlling access.
  - Projects have three identifying attributes: **Project ID** (globally unique and immutable), **Project Name** (user-created and changeable), and **Project Number** (used internally by Google).

- **Resource Hierarchy**:
  - Google Cloud’s hierarchy has four levels:
    1. **Resources**: Containers, VMs, tables, etc.
    2. **Projects**: Organize resources.
    3. **Folders**: Group projects for management (e.g., per department).
    4. **Organization Node**: Top-level entity encompassing all projects and resources within an organization.
  - Policies applied at higher levels (e.g., folder, organization) are inherited by lower levels, making management more efficient.

- **Identity and Access Management (IAM)**:
  - **IAM** helps manage who can do what on which resources.
  - "Who" (also called **principals**) can be Google accounts, groups, service accounts, or Cloud Identity domains.
  - **Roles** define what actions a principal can perform, and each role consists of a set of permissions.
  
- **Security**:
  - Security is a **shared responsibility** between the customer and Google Cloud.
    - Google Cloud is responsible for securing the infrastructure, such as hardware and networks.
    - Customers are responsible for securing the resources they create, like configurations, access policies, and data.

### Summary: Google Cloud Infrastructure and Global Network

- **Google’s Global Network**:
  - Google’s network is one of the largest in the world, carrying up to 40% of the internet’s daily traffic.
  - It includes over 100 content caching nodes worldwide, ensuring low latency and high throughput by caching high-demand content close to users.

- **Infrastructure Locations**:
  - Google Cloud's infrastructure spans five major geographic regions: **North America**, **South America**, **Europe**, **Asia**, and **Australia**.
  - Each geographic location is subdivided into **regions** (independent areas like London or `europe-west2`) and **zones** (smaller areas within regions).
  - **Zones** ensure resource redundancy and availability, allowing users to deploy resources across multiple zones or regions for better proximity to users and protection against disasters.

- **Current Scale**:
  - As of now, Google Cloud supports **112 zones** across **37 regions**, with continuous expansion to improve performance and reach.

### Summary: Google Cloud Billing and Quotas

- **Billing Structure**:
  - Billing is managed at the **project level**. Each project is linked to a **billing account**, where payment options and billing information are configured.
  - Projects not linked to a billing account can only use free services.
  - Billing accounts can support multiple projects and utilize **subaccounts** to separate billing by project, often used by resellers.

- **Cost Management Tools**:
  - **Budgets**: Set spending limits at the billing or project level. Budgets can be fixed or based on a percentage of the previous month’s spend.
  - **Alerts**: Notify users when costs approach set thresholds (e.g., 50%, 90%, or 100% of the budget).
  - **Reports**: A visual tool in the Google Cloud Console that helps track expenditures by project or service.

- **Quotas**:
  - Designed to prevent excessive resource consumption due to errors or attacks.
  - Two types of quotas:
    1. **Rate Quotas**: Limit the number of API calls or resource usage over a set period (e.g., 3,000 GKE API calls every 100 seconds).
    2. **Allocation Quotas**: Limit the number of resources a project can have (e.g., a project can have up to 5 Virtual Private Cloud networks).

- **Quota Management**: Projects start with default quotas, but users can request increases from Google Cloud Support.

### Summary: Ways to Access and Interact with Google Cloud

Google Cloud provides four main methods to access and interact with its services:

1. **Google Cloud Console**:
   - A **graphical user interface (GUI)** to manage resources.
   - Used to deploy, scale, monitor, and control Google Cloud services.
   - Features include **SSH access** to instances, **resource health checks**, and budget management.
   - Accessible via a web browser at [console.cloud.google.com](https://console.cloud.google.com).

2. **Cloud SDK & Cloud Shell**:
   - **Cloud SDK**: A set of tools (e.g., `gcloud`, `gsutil`, `bq`) for managing resources via the command line.
     - Can be installed locally on your computer.
   - **Cloud Shell**: A **Debian-based virtual machine** accessed via the browser.
     - Provides **command-line tools** and a **5GB persistent home directory**.
     - Cloud Shell includes built-in authorization and web preview functionality for managing resources.
     - Both tools are essential for interacting with Google Cloud via the terminal, including using Kubernetes commands like `kubectl`.

3. **Google Cloud APIs**:
   - Developers can interact with Google Cloud services programmatically via APIs.
   - The **Google APIs Explorer** in the Cloud Console shows available APIs and versions.
   - Commonly used by developers to automate the management of resources.

4. **Google Cloud App**:
   - A mobile app that allows basic management of Compute Engine instances (start/stop), view logs, connect via SSH, and manage Cloud SQL and App Engine services.
   - Not relevant for Kubernetes-focused tasks in this course.
