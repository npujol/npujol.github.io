---
tags:
- roadmap
- kubernetes
- kubernetes-logging
- ready
- online
- logs
---

# kubernetes-logging-logs

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/monitoring-and-logging/logs)__

## Logs

Logs are generated by containerized applications running on nodes within the cluster. You can access these logs using the `kubectl logs` command followed by the name of the pod. By default, this command shows the logs from the most recent container in the pod, but you can specify a specific container within the pod by adding the container name to the command. Adding the `-f` flag to the command allows you to follow the logs in real-time. There are also third-party logging solutions available for Kubernetes, such as the EFK and Prometheus stacks, that provide more advanced logging capabilities and scalability for large-scale applications.

## Resources

* [@official@System Logs](https://kubernetes.io/docs/concepts/cluster-administration/system-logs/)
* [@video@Kubernetes: Log collection explained](https://www.youtube.com/watch?v=6kmHvXdAzIM)