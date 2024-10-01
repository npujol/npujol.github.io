---
tags:
- roadmap
- kubernetes
- kubernetes-security
- ready
- online
---
# kubernetes-security-role-based-access-control

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/kubernetes-security/role-based-access-control)__

## Role Based access Control

Role-Based Access Control (RBAC) is a method of controlling access to Kubernetes resources based on the roles assigned to users or groups. RBAC involves creating roles and binding them to users or groups to control access to Kubernetes resources. Roles are defined as a set of rules that determine what actions can be performed on specific resources. By assigning roles to users or groups, access to Kubernetes resources can be restricted or granted based on the permissions defined in the role. RBAC helps ensure the security and integrity of Kubernetes clusters by limiting access to authorized users and groups.

Learn more from the following resources:

* [@official@Role Based Access Control Good Practices](https://kubernetes.io/docs/concepts/security/rbac-good-practices/)
* [@video@Understand Role Based Access Control in Kubernetes](https://www.youtube.com/watch?v=G3R24JSlGjY)
* [@article@A Primer on Kubernetes Access Control](https://thenewstack.io/a-primer-on-kubernetes-access-control/)
* [@article@A Practical Approach to Understanding Kubernetes Authorization](https://thenewstack.io/a-practical-approach-to-understanding-kubernetes-authorization/)
* [@article@3 Realistic Approaches to Kubernetes RBAC](https://thenewstack.io/three-realistic-approaches-to-kubernetes-rbac/)
* [@article@Role-Based Access Control: Five Common Authorization Patterns](https://thenewstack.io/role-based-access-control-five-common-authorization-patterns/)
* [@article@Securing Kubernetes and Other Resources at Scale Using RBAC](https://thenewstack.io/securing-kubernetes-and-other-resources-at-scale-using-rbac/)

Here are key points from the Kubernetes RBAC (Role-Based Access Control) best practices:

1. __Principle of Least Privilege__: Assign minimal permissions for roles to reduce security risks.
2. __Granularity__: Use fine-grained roles over broader permissions to limit access to critical resources.
3. __Role Reviews__: Regularly audit roles and their permissions.
4. __Namespace Segmentation__: Isolate workloads and permissions by using separate namespaces.
5. __RBAC Binding__: Carefully bind roles to users or groups with clear responsibilities.
