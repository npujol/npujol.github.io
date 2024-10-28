---
tags:
- roadmap
- Informatic
- kubernetes
- ready
- online
- scaling
---

# kubernetes-autoscaling

## Contents

- [[kubernetes-autoscaling-horizontal-pod-autoscaler]]
- [[kubernetes-autoscaling-vertical-pod-autoscaler]]
- [[kubernetes-autoscaling-cluster-autoscaling]]

__Roadmap info from [roadmap website](https://roadmap.sh/kubernetes/autoscaling)__

## Autoscaling

Autoscaling in Kubernetes involves adjusting the resources allocated to a deployment or set of pods based on demand. It includes __Horizontal Pod Autoscaling (HPA)__ and __Vertical Pod Autoscaling (VPA)__, which increase or decrease replicas or adjust resource requests and limits, respectively. Autoscaling can be used with Cluster Autoscaling to efficiently allocate resources and ensure application responsiveness. It’s useful for handling variable workloads or sudden spikes in traffic.

## Resources

- [@official@Autoscaling in Kubernetes](https://kubernetes.io/blog/2016/07/autoscaling-in-kubernetes/)
- [@video@Kubernetes cluster autoscaling for beginners](https://www.youtube.com/watch?v=jM36M39MA3I)

## Horizontal Pod Autoscaling vs Vertical Pod Autoscaling

| Feature/Aspect             | Horizontal Pod Autoscaling (HPA)               | Vertical Pod Autoscaling (VPA)                 |
|----------------------------|------------------------------------------------|-----------------------------------------------|
| __Scaling Method__          | Adds or removes pods based on workload         | Adjusts the resource requests/limits of pods  |
| __Primary Use Case__        | Handle varying traffic load by increasing or decreasing the number of pods | Optimize resource allocation (CPU, memory) for long-running or varying workload applications |
| __Trigger__                 | CPU, memory, or custom metrics thresholds      | Pod’s resource usage (CPU, memory) over time  |
| __Granularity__             | Scales the number of replicas                  | Modifies individual pod resource requests and limits |
| __Best For__                | High traffic and fluctuating demand scenarios  | Applications with unpredictable or evolving resource requirements |
| __Resource Efficiency__     | Ensures workload is balanced across multiple pods | Ensures each pod gets the right amount of resources without wasting or starving |
| __Impact on Cluster__       | Can increase the number of pods in the cluster | Can change resource limits within the existing number of pods |
| __Supported Metrics__       | CPU, memory, custom metrics                    | CPU, memory                                   |
| __Downsides__               | Might lead to over-provisioning if not configured well | May cause pod restarts when resource limits are adjusted |
| __Example Use Case__        | Web servers with fluctuating traffic           | Databases or backend services with varying CPU/memory needs |
