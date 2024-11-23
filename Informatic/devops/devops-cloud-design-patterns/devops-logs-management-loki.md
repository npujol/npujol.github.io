---
tags:
  - roadmap
  - devops
  - devops-cloud-design-patterns
  - ready
  - online
---

# devops-cloud-design-patterns-loki

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/devops/loki@w2eCgBC-ydMHSxh7LMti8)__

## Loki

Loki is a horizontally-scalable, highly-available, multi-tenant log aggregation system designed by Grafana Labs. It’s purpose-built to be cost-effective and easy to operate, making it particularly well-suited for storing and querying logs from Kubernetes clusters. Loki indexes metadata about logs rather than the full text, which allows it to be more resource-efficient than traditional log management systems. It uses the same querying language as Prometheus (LogQL), making it easier for users familiar with Prometheus to adopt. Loki integrates seamlessly with Grafana for visualization and is often used alongside Prometheus and Grafana in cloud-native observability stacks. Its design focuses on simplicity, making it an attractive option for organizations looking for efficient log management in containerized environments.

Visit the following resources to learn more:

* [@official@Loki Website](https://grafana.com/oss/loki/)
* [@article@Official Documentation](https://grafana.com/docs/loki/latest/?pg=oss-loki&plcmt=quick-links)
* [@video@Meet Grafana LOKI, a Log Aggregation System for EVERYTHING](https://www.youtube.com/watch?v=h_GGd7HfKQ8)
* [@feed@Explore top posts about Grafana](https://app.daily.dev/tags/grafana?ref=roadmapsh)

## Notes

When you are using loki through `helm install --values deploy/k3d/solution/loki.yaml loki grafana/loki -n monitoring` you should map the port to another one, because in k3d Traefik uses 80 and 443


## Tutorial

