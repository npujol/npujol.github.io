---
tags:
- roadmap
- kubernetes
- kubernetes-topics
- ready
- online
---

# kubernetes-topics-custom-controllers

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/kubernetes-advanced-topics/custom-controllers)__

## Custom Controllers

Custom controllers in Kubernetes automate the management of custom resources that are not natively supported by Kubernetes. They are implemented as Kubernetes controllers that watch custom resources and react to changes in their state. Custom resources are created by extending the Kubernetes API with new resource types specific to an organization’s needs. Custom controllers can be developed using various programming languages and frameworks, such as the Operator Framework. The Operator Framework provides tools and best practices for developing, testing, and deploying custom controllers.

## Resources

* [@official@Custom Controllers](https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/#custom-controllers)
* [@video@Extending Kubernetes with Custom Controllers](https://www.youtube.com/results?search_query=Custom+controllers+in+k8s)

### Custom Controllers in Kubernetes

* __Definition__: Custom controllers are Kubernetes controllers that automate the management of __Custom Resources__ (CRs) that are not natively supported by Kubernetes.
* __Purpose__: They watch custom resources and take actions when the state of these resources changes, automating tasks such as scaling, updates, and more.
* __Custom Resources__: These extend the Kubernetes API to handle resource types specific to the organization’s needs.
* __Development__: Custom controllers can be built using various languages and frameworks, such as Go, Python, or the __Operator Framework__.
* __Operator Framework__: A toolset for building Kubernetes Operators, which are custom controllers used to manage complex applications on Kubernetes.

### Example

1. *_Operator Framework__:
   * The __Operator SDK__ simplifies the development of custom controllers using Go, Ansible, or Helm.
   * [Operator SDK Documentation](https://sdk.operatorframework.io/)

2. __Custom Resource Definition (CRD)__:
   * The CRD is the Kubernetes API extension mechanism used to define new resource types.
   * [Custom Resource Definitions Guide](https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/)

3. __Controller Example (Go)__:
   * A basic custom controller written in Go using the Kubernetes client-go library.
   * [Kubernetes Custom Controller Tutorial](https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-controller/)

By using custom controllers, you can automate the management of complex systems and resources in a Kubernetes environment, aligning them with your application-specific needs.
