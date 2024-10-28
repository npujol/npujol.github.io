---
tags:
  - roadmap
  - Informatic
  - devops
  - ready
  - online
  - devops-infrastructure-monitoring
---

# devops-infrastructure-monitoring

## Contents

- [[devops-infrastructure-monitoring-zabbix]]
- [[devops-infrastructure-monitoring-prometheus]]
- [[devops-infrastructure-monitoring-datadog]]
- [[devops-infrastructure-monitoring-grafana]]

__Roadmap info from [roadmap website](https://roadmap.sh/devops/infrastructure-monitoring@gaoZjOYmU0J5aM6vtLNvN)__

## Infrastructure Monitoring

Monitoring refers to the practice of making the performance and status of infrastructure visible. This section contains common tools used for monitoring. This is a very vendor-heavy space - use caution when studying materials exclusively from a given product or project, as there are many conflicting opinions and strategies in use. There is no single solution for the most substantially complex internet-facing applications, so understanding the pros and cons of these tools will be useful in helping you plan how to monitor a system for a given goal.

Visit the following resources to learn more:

Free Resources

---

- [articleBest Practices to Optimize Infrastructure Monitoring within DevOps Teams](https://thenewstack.io/best-practices-to-optimize-infrastructure-monitoring-within-devops-teams/)
- [articleSeven Steps to Effective Cloud Native Infrastructure Monitoring](https://thenewstack.io/seven-steps-to-effective-cloud-native-infrastructure-monitoring/)
- [videoInfrastructure Monitoring Basics with Telegraf, Grafana and InfluxDB](https://www.youtube.com/watch?v=ESub4SAKouI)
- [feedExplore top posts about Infrastructure](https://app.daily.dev/tags/infrastructure?ref=roadmapsh)


### Comparison

| **Technology**                                      | **Description**                                                                                              | **Characteristics**                                                                                                                                                                   | **Use Cases**                                                                                                                                       | **Other Tech Affinity**                                                                                                          |
|-----------------------------------------------------|--------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Zabbix**                                          | Open-source monitoring software for networks, servers, cloud services, and virtual machines.                   | - Agent-based and agentless monitoring <br> - Highly customizable <br> - Offers detailed data collection <br> - Native alerting and escalation.                                         | - Monitoring infrastructure health (physical servers, VMs, networks) <br> - Enterprises needing extensive on-prem monitoring solutions.               | - Integrates with Grafana for visualization <br> - Supports SNMP, JMX, and IPMI <br> - Works with various databases (MySQL, PostgreSQL, etc.)                            |
| **Prometheus**                                      | An open-source monitoring and alerting toolkit, primarily for metrics-based monitoring of cloud-native environments. | - Pull-based metric collection <br> - Time-series database <br> - Supports custom metrics via exporters <br> - Native alerting with Alertmanager.                                        | - Cloud-native infrastructure monitoring <br> - Kubernetes and microservices monitoring <br> - Metrics-driven monitoring with real-time alerting.     | - Integrates with Grafana for visualization <br> - Natively integrates with Kubernetes, Docker <br> - Exporters for various systems/services                          |
| **Datadog**                                         | A cloud-based infrastructure monitoring platform that provides end-to-end visibility into applications, services, and systems. | - SaaS-based <br> - Full-stack observability (infrastructure, APM, logs, security) <br> - Auto-discovery of resources <br> - Real-time analytics and dashboards.                         | - Comprehensive monitoring for cloud-native and hybrid environments <br> - Infrastructure, APM, and security monitoring <br> - Unified logging and tracing. | - Integrates with AWS, Azure, GCP, and Kubernetes <br> - Works with CI/CD pipelines and DevOps tools like Jenkins, Terraform, Docker                                |
| **Grafana**                                         | An open-source platform for monitoring and observability, focused on querying, visualizing, and analyzing metrics from multiple data sources.       | - Multi-source metric visualization <br> - Highly customizable dashboards <br> - Supports real-time data <br> - Can be used as a frontend for other monitoring tools.                  | - Visualization of metrics from multiple data sources <br> - Building dashboards from Prometheus, InfluxDB, Graphite, Elasticsearch, etc.             | - Integrates natively with Prometheus, InfluxDB, Elasticsearch, and others <br> - Can be combined with tools like Loki (for logs) and Tempo (for tracing)              |

### Key Highlights:
??

- **Zabbix** is ideal for traditional, agent-based infrastructure monitoring with strong customization capabilities and works well for on-premise, VM, and network monitoring.
  
- **Prometheus** excels in cloud-native environments with metrics-based monitoring, particularly for containerized applications, Kubernetes, and microservices.

- **Datadog** provides a comprehensive SaaS solution for full-stack monitoring, covering infrastructure, APM, and security with strong cloud integration and real-time analytics.

- **Grafana** focuses on powerful metric visualization and analysis, often paired with Prometheus, Zabbix, or other time-series databases for building highly customizable monitoring dashboards.