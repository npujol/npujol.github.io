---
tags:
  - roadmap
  - devops
  - devops-infrastructure-monitoring
  - ready
  - online
---

# devops-infrastructure-monitoring-grafana

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/devops/grafana@niA_96yR7uQ0sc6S_OStf)__

## Grafana

Grafana is an open-source analytics and interactive visualization web application. It connects to various data sources, including time-series databases, relational databases, and cloud services, to create customizable dashboards. Grafana excels at visualizing time-series data for infrastructure and application analytics, supporting a wide range of chart types and plugins. It features alerting capabilities, user authentication, and role-based access control. Grafana is commonly used for monitoring system metrics, application performance, and business analytics. Its flexibility and ability to combine data from multiple sources make it popular in DevOps environments for creating comprehensive monitoring solutions. Grafana’s user-friendly interface and extensive customization options enable users to create visually appealing and informative dashboards for real-time data visualization and analysis.

Visit the following resources to learn more:

* [@official@Grafana Website](https://grafana.com/)
* [@official@Grafana Webinars and Videos](https://grafana.com/videos/)
* [@video@Server Monitoring // Prometheus and Grafana Tutorial](https://www.youtube.com/watch?v=9TJx7QTrTyo)
* [@feed@Explore top posts about Grafana](https://app.daily.dev/tags/grafana?ref=roadmapsh)

## Tutorial

- [installing-prometheus-loki-and-grafana-on-kubernetes](https://jfrog.com/help/r/artifactory-configure-prometheus-with-grafana-using-helm-charts-for-artifactory/installing-prometheus-loki-and-grafana-on-kubernetes)
- [install-microservices](https://grafana.com/docs/loki/latest/setup/install/helm/install-microservices/)


## From killercoda
- Use Grafana Alloy to send logs to Loki


- [Tutorial setup](https://grafana.com/tutorials/grafana-fundamentals/)

### Concepts

O11y ? Observability


### Topics

- Explore metrics and logs
- Build dashboards
- Annotate dashboards
Annotate events

When things go bad, it often helps if you understand the context in which the failure occurred. Time of last deploy, system changes, or database migration can offer insight into what might have caused an outage. Annotations allow you to represent such events directly on your graphs.

- Set up alert rules

A Contact point - A Contact point defines how Grafana delivers an alert instance. When the conditions of an alert rule are met, Grafana notifies the contact points, or channels, configured for that alert rule.


MLTP ? Metrics, Logs, Traces and Profiles


### Introduction to Metrics, Logs, Traces and Profiles in Grafana

- [Introduction to Metrics, Logs, Traces and Profiles in Grafana](https://github.com/grafana/intro-to-mltp/blob/main/README.md)



- Docker Compose manifest for easy setup.
- Four-service application:
 - A service requesting data from a REST API server.
 - A REST API server that receives requests and utilises a Database for storing/retrieving data for those requests.
 - A recorder service for storing messages to an AMQP bus.
 - A Postgres Database for storing/retrieving data from.
- k6 service running a load test against the above application.
- Tempo service for storing and querying trace information.
- Loki service for storing and querying log information.
- Mimir service for storing and querying metric information.
- Pyroscope service for storing and querying profiling information.
- Beyla services for watching the four-service application and automatically generating signals.
- Grafana service for visualising observability data.
- Grafana Alloy service for receiving traces and producing metrics and logs based on these traces.
- A Node Exporter service to retrieve resource metrics from the local host.
