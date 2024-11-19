---
tags:
  - roadmap
  - devops
  - devops-cloud-design-patterns
  - ready
  - online
---

# devops-cloud-design-patterns-kubernetes

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/devops/kubernetes@hIBeTUiAI3zwUY6NgAO-A)__

## Kubernetes

Kubernetes is an open source container management platform, and the dominant product in this space. Using Kubernetes, teams can deploy images across multiple underlying hosts, defining their desired availability, deployment logic, and scaling logic in YAML. Kubernetes evolved from Borg, an internal Google platform used to provision and allocate compute resources (similar to the Autopilot and Aquaman systems of Microsoft Azure). The popularity of Kubernetes has made it an increasingly important skill for the DevOps Engineer and has triggered the creation of Platform teams across the industry. These Platform engineering teams often exist with the sole purpose of making Kubernetes approachable and usable for their product development colleagues.

Visit the following resources to learn more:

* [@official@Kubernetes Website](https://kubernetes.io/)
* [@opensource@kubernetes/kubernetes](https://github.com/kubernetes/kubernetes)
* [@article@Primer: How Kubernetes Came to Be, What It Is, and Why You Should Care](https://thenewstack.io/primer-how-kubernetes-came-to-be-what-it-is-and-why-you-should-care/)
* [@article@Kubernetes: An Overview](https://thenewstack.io/kubernetes-an-overview/)
* [@video@ Complete Kubernetes Course - From BEGINNER to PRO](https://www.youtube.com/watch?v=2T86xAtR6Fo)
* [@feed@Explore top posts about Kubernetes](https://app.daily.dev/tags/kubernetes?ref=roadmapsh)
* https://kubebyexample.com/learning-paths/container-fundamentals/introduction-containers/orchestration

- Application Definitions - YAML and JSON files can be passed between developers or from developers to operators to run fully-functioning, multi-container applications
- Easy Application Instances - Run many versions of the same application in different namespaces
- Multi-Node Scheduling - controllers built into Kubernetes manage 10 or 10,000 container hosts with no extra complexity
- Powerful API - Developers, Cluster Admins, and Automation alike can define application state, tenancy, and with OpenShift 4, even cluster node states
- Operational Automation - [Kubernetes Operators](https://kubernetes.io/docs/concepts/extend-kubernetes/operator/) can be thought of as a robot systems administrator deployed side by side with applications managing mundane and complex tasks for the application (backups, restores, etc)
- Higher Level Frameworks - Once you adopt Kubernetes orchestration, you gain access to an innovative ecosystem of tools like Istio, Knative, and the previously mentioned Operator Framework