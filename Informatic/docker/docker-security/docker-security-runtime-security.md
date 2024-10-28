---
tags:
- roadmap
- docker
- docker-security
- ready
- online
---

# docker-security-runtime-security

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/docker/container-security/runtime-security)__

## Runtime Security

Runtime security focuses on ensuring the security of Docker containers while they are running in production. This is a critical aspect of container security, as threats may arrive or be discovered after your containers have been deployed. Proper runtime security measures help to minimize the damage that can be done if a vulnerability is exploited.

## Least Privilege Principle

Ensure that your containers follow the principle of least privilege, meaning they should only have the minimum permissions necessary to perform their intended functions. This can help to limit the potential damage if a container is compromised.

* Run your containers as a non-root user whenever possible.
* Avoid running privileged containers, which have access to all of the host’s resources.
* Use Linux capabilities to strip away unnecessary permissions from your containers.

## Read-only Filesystems

By setting your containers’ filesystems to read-only, you can prevent attackers from modifying critical files or planting malware inside your containers.

* Use the `--read-only` flag when starting your containers to make their filesystems read-only.
* Implement volume mounts or `tmpfs` mounts for locations that require write access.

## Security Scanning and Monitoring

Ensure that your containers are regularly scanned for vulnerabilities, both in the images themselves and in the runtime environment.

* Use container scanning tools to detect and patch vulnerabilities in your images.
* Implement runtime monitoring to detect and respond to security events, such as unauthorized access attempts or unexpected process launches.

Here’s a table comparing __Security Scanning__ and __Monitoring__ in containers along with popular tools:

| __Category__             | __Security Scanning__                                     | __Security Monitoring__                                 |
|--------------------------|----------------------------------------------------------|---------------------------------------------------------|
| __Purpose__              | Identifies vulnerabilities and misconfigurations in container images, dependencies, and configurations | Continuously monitors container behavior and environment for real-time threats and anomalies |
| __Scope__                | - Static image analysis - Dependency and package scanning - Compliance checks | - Runtime monitoring - Network traffic analysis - Behavior anomaly detection |
| __Key Focus__            | - Vulnerabilities - Configuration errors - Compliance issues | - Suspicious activity - Policy violations - Resource usage anomalies |
| __When Used__            | During the build and deployment phases (before the container is running) | During the runtime phase (when containers are actively running) |
| __Outcomes__             | - Secure and verified images - Reduced attack surface - Compliance reports | - Detection of suspicious or malicious activity - Alerting for immediate action - Audit trails |
| __Popular Tools__        | __Trivy__: Fast, simple vulnerability scanner for containers, OS packages, and dependencies | __Falco__: Open-source runtime security monitoring for containers and Kubernetes |
|                          | __Clair__: Static analysis of vulnerabilities in container images | __Aqua Security__: Real-time monitoring and enforcement of security policies for containers |
|                          | __Anchore__: Comprehensive image scanning, policy enforcement, and compliance validation | __Sysdig__: Provides deep visibility, security, and performance monitoring of containerized applications |
|                          | __Snyk__: Focuses on scanning open-source libraries and container vulnerabilities | __Datadog__: Monitors container resource usage and security at the runtime level |
|                          | __Aqua Security__: Offers both image scanning and compliance checks for Kubernetes and containers | __Prometheus + Grafana__: Collects and visualizes container metrics for anomaly detection and alerting |
| __Best Practices__        | - Scan images regularly before deploying - Use trusted and minimal base images - Apply updates to images frequently | - Implement real-time threat detection - Monitor network traffic and resource usage - Set up alerts for anomalies |

This table summarizes the core differences between __Security Scanning__ and __Security Monitoring__ in containers, including their purpose, scope, outcomes, and tools commonly used.

## Resource Isolation

Isolate your containers’ resources, such as CPU, memory, and network, to prevent a single compromised container from affecting other containers or the host system.

* Use Docker’s built-in resource constraints to limit the resources your containers can consume.
* Use network segmentation and firewalls to isolate your containers and limit their communication.

## Audit Logs

Maintain audit logs of container activity to help with incident response, troubleshooting, and compliance.

* Use Docker’s logging capabilities to capture container logs, outputting them to a centralized logging solution.
* Implement log analysis tools to monitor for suspicious activity and automatically alert if a potential incident is detected.

By focusing on runtime security, you can help ensure that your Docker containers continue to be secure even after they have been deployed in your environment. Aim to minimize the potential attack surface and continuously monitor for threats to help protect your critical applications and data.
