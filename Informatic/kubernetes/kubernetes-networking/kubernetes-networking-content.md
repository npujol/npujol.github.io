---
tags:
- roadmap
- Informatic
- kubernetes
- ready
- online
- communication
---

# kubernetes-networking

## Contents

- [[kubernetes-networking-networking-and-pod-to-pod-communication]]
- [[kubernetes-networking-load-balancing]]
- [[kubernetes-networking-external-access-to-services]]

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/networking)__

## Services and Networking

Services and networking are key components that enable communication between pods and external clients. Services provide a stable endpoint for accessing a set of pods, while networking plugins and configuration options enable __pod-to-pod communication__ and __network isolation__. These features are designed to be scalable, reliable, and flexible, making it easier for developers to manage and orchestrate complex microservices architectures. Additional features like Ingress and DNS-based service discovery provide flexible external access to services and simplify service discovery within a cluster.

Learn more from the following resources:


- [officialService - Documentation](https://kubernetes.io/docs/concepts/services-networking/service/)
- [officialThe Kubernetes Network Model](https://kubernetes.io/docs/concepts/services-networking/#the-kubernetes-network-model)
- [feedExplore top posts about Networking](https://app.daily.dev/tags/networking?ref=roadmapsh)

### Best Practices

| Best Practice                    | ConfigMaps                                      | Secrets                                        |
|-----------------------------------|-------------------------------------------------|------------------------------------------------|
| __Storage__                       | Store non-sensitive, configuration data such as environment variables, configuration files, etc. | Store sensitive data like passwords, API keys, and tokens. |
| __Encryption__                    | Data is stored in plain text; consider encrypting values before storing if necessary. | Use Kubernetes' built-in encryption feature to encrypt Secrets at rest. |
| __Environment Variables vs Volumes__ | Can be used as environment variables or mounted as volumes depending on the use case. | Prefer mounting as volumes over environment variables to avoid exposure in process lists. |
| __Access Control__                | Use RBAC to restrict access to ConfigMaps to necessary resources only. | Apply strict RBAC policies to restrict access to Secrets and avoid exposing them unnecessarily. |
| __Use of Namespaces__             | Store ConfigMaps in the same namespace as the application to avoid cross-namespace access issues. | Keep Secrets in the same namespace as the application to limit exposure. |
| __Version Control__               | Avoid storing ConfigMaps directly in version control; use tools for templates like Helm to manage configurations. | Never store Secrets in version control; instead, use external secret management tools (e.g., HashiCorp Vault, AWS Secrets Manager). |
| __Lifecycle Management__          | Regularly update and review ConfigMaps to ensure they are up-to-date with the application's requirements. | Rotate Secrets periodically, especially after key changes or potential exposure. |
| __Security__                      | Ensure no sensitive data is stored in ConfigMaps, as they are not encrypted. | Enable Kubernetes secrets encryption and ensure secrets are stored in a secure manner. |
| __Size Limitation__               | ConfigMaps should be kept small (under 1 MB), as they are stored in etcd. | Same as ConfigMaps, keep Secrets small (under 1 MB), as they are stored in etcd. |
| __External Management__           | Consider using external systems for complex configurations. | Leverage external secret management solutions for better security and secret lifecycle management. |
| __Auditing__                      | Enable logging and auditing of ConfigMap changes to track misconfigurations. | Regularly audit Secrets to ensure proper handling and monitor for unauthorized access. |
