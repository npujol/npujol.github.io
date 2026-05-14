______________________________________________________________________

id: kubernetes-topics-custom-controllers
tags:

- roadmap
- kubernetes
- kubernetes-topics
- ready
- online

______________________________________________________________________

# kubernetes-topics-custom-controllers

## Contents

- - Roadmap info from [ roadmap website ] (<https://roadmap.sh/kubernetes/kubernetes-advanced-topics/custom-controllers>) * \*

  ## Custom Controllers

  Custom
  controllers in Kubernetes automate the management of custom resources that are not natively supported by Kubernetes. They are implemented as Kubernetes controllers that watch custom resources and react to changes in their state. Custom resources are created by extending the Kubernetes API with new resource types specific to an organization’s needs. Custom controllers can be developed using various programming languages and frameworks, such as the Operator Framework. The Operator Framework provides tools and best practices for developing, testing, and deploying custom controllers.

## Resources

- [@official@Custom Controllers](https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/#custom-controllers)
- [@video@Extending Kubernetes with Custom Controllers](https://www.youtube.com/results?search_query=Custom+controllers+in+k8s)

### Custom Controllers in Kubernetes

- **Definition**: Custom controllers are Kubernetes controllers that automate the management of **Custom Resources** (CRs) that are not natively supported by Kubernetes.
- **Purpose**: They watch custom resources and take actions when the state of these resources changes, automating tasks such as scaling, updates, and more.
- **Custom Resources**: These extend the Kubernetes API to handle resource types specific to the organization’s needs.
- **Development**: Custom controllers can be built using various languages and frameworks, such as Go, Python, or the **Operator Framework**.
- **Operator Framework**: A toolset for building Kubernetes Operators, which are custom controllers used to manage complex applications on Kubernetes.

### Example

1. \*\_Operator Framework\_\_:

- The **Operator SDK** simplifies the development of custom controllers using Go, Ansible, or Helm.
- [Operator SDK Documentation](https://sdk.operatorframework.io/)

1. **Custom Resource Definition (CRD)**:

- The CRD is the Kubernetes API extension mechanism used to define new resource types.
- [Custom Resource Definitions Guide](https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/)

1. **Controller Example (Go)**:

- A basic custom controller written in Go using the Kubernetes client-go library.
- [Kubernetes Custom Controller Tutorial](https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-controller/)

By using custom controllers, you can automate the management of complex systems and resources in a Kubernetes environment, aligning them with your application-specific needs.
