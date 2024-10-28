---
tags:
  - roadmap
  - devops
  - devops-what-is-and-how-to-setup-x
  - ready
  - online
---

# devops-what-is-and-how-to-setup-x-firewall

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/devops/firewall@f3tM2uo6LLSOmyeFfLc7h)__

## Firewall

Firewall is a __network security device__ that monitors and filters incoming and outgoing network traffic based on an organization’s previously established security policies. It is a barrier that sits between a private internal network and the public Internet. A firewall’s main purpose is to allow non-threatening traffic in and to keep dangerous traffic out.

Visit the following resources to learn more:

* [@article@What is Firewall?](https://www.checkpoint.com/cyber-hub/network-security/what-is-firewall/)
* [@article@Types of Firewall](https://www.cisco.com/c/en_in/products/security/firewalls/what-is-a-firewall.html)
* [@article@Uncomplicated Firewall (UFW)](https://dev.to/coder7475/uncomplicated-firewall-ufw-1638)
* [@article@Why do we need Firewalls?](https://www.tutorialspoint.com/what-is-a-firewall-and-why-do-you-need-one)
* [@video@Firewalls and Network Security - SimpliLearn](https://www.youtube.com/watch?v=9GZlVOafYTg)
* [@feed@Explore top posts about Firewall](https://app.daily.dev/tags/firewall?ref=roadmapsh)

| __Feature__                         | __AWS (AWS Network Firewall)__                                                                                               | __Azure (Azure Firewall)__                                                                                                 |
| ----------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| __Service Name__                    | AWS Network Firewall                                                                                                         | Azure Firewall                                                                                                             |
| __Type of Firewall__                | Managed network firewall                                                                                                     | Managed network firewall                                                                                                   |
| __Key Features__                    | - Stateful firewall- Centralized policy management- Deep packet inspection- Traffic filtering- URL filtering | - Stateful firewall- Built-in high availability- Threat intelligence-based filtering- Application filtering    |
| __Integration with Cloud__          | - Integrates with AWS VPC, Route 53, Transit Gateway, and AWS WAF                                                            | - Integrates with Azure VNet, Application Gateway, VPN Gateway, and Azure Monitor                                          |
| __Traffic Filtering__               | - Supports layer 3–layer 7 filtering- Protocol and port filtering- Stateful rules and policies                       | - Application-layer filtering (Layer 7)- Network-layer filtering- FQDN filtering for outbound traffic              |
| __Threat Intelligence__             | - Integrates with AWS GuardDuty for threat detection                                                                         | - Built-in threat intelligence with automatic blocking of malicious traffic using feeds from Microsoft Threat Intelligence |
| __High Availability__               | - Built-in high availability (scales across AZs)                                                                             | - Built-in high availability with automatic scaling                                                                        |
| __Logging & Monitoring__            | - Logs via AWS CloudWatch, S3, and Kinesis                                                                                   | - Logs via Azure Monitor, Azure Sentinel, and Storage Accounts                                                             |
| __Integration with Security Tools__ | - AWS WAF (Web Application Firewall)- GuardDuty- AWS Shield for DDoS protection                                      | - Azure WAF (Web Application Firewall)- Azure Sentinel (SIEM)- Microsoft Defender for Cloud                        |
| __Cost__                            | - Pay-as-you-go model based on usage (number of traffic processing units)                                                    | - Pay-as-you-go model based on data processed, number of rules, and network egress                                         |
| __Management Interface__            | - Managed via AWS Management Console, AWS CLI, and SDKs                                                                      | - Managed via Azure Portal, Azure CLI, PowerShell, and REST API                                                            |
| __Use Case__                        | Ideal for VPCs that require high-security policies and want tight integration with AWS infrastructure                        | Best for securing Azure virtual networks with centralized, scalable, and threat intelligence-based firewall capabilities   |
| __Additional Capabilities__         | - Centralized firewall management for multiple accounts using AWS Firewall Manager                                           | - Azure Firewall Manager for managing policies across multiple regions                                                     |

| __Firewall__        | __Description__                                                                                                            | __Key Features__                                                                                          | __Use Case__                                                                                           |
|---------------------|----------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------|
| __iptables__        | - Legacy Linux firewall utility that interfaces with the Netfilter framework                                                 | - Packet filtering- Network Address Translation (NAT)- Stateful inspection (with connection tracking) | Used for configuring complex firewall rules, port forwarding, and packet filtering on older Linux systems |
| __nftables__        | - Modern replacement for iptables, built on the Netfilter framework                                                         | - Unified command for packet filtering- Improved performance- Simplified syntax                      | Best for replacing iptables with a more modern, efficient tool for managing firewall rules               |
| __ufw (Uncomplicated Firewall)__ | - Simplified front-end for iptables, making it easier to manage firewall rules                                   | - Easy command-line interface- Predefined profiles for common services- IPv4 and IPv6 support        | Ideal for users and administrators who need a simple way to manage firewall rules without complex configurations |
| __firewalld__       | - Dynamic firewall manager for Linux, built on top of nftables and iptables, offering easier and more flexible rule management | - Zone-based configuration- Supports both iptables and nftables- Allows runtime changes              | Suitable for environments where rules and configurations need to be dynamically managed without restarts  |
| __CSF (ConfigServer Security & Firewall)__ | - Advanced firewall solution designed to be easy to configure and manage, commonly used on web hosting servers | - Stateful packet inspection- Login/Intrusion detection- GUI integration (e.g., Webmin)              | Best for securing Linux web servers, offering user-friendly management and intrusion detection           |
| __Shorewall__       | - High-level tool to configure Netfilter (iptables/nftables), making firewall management more intuitive                      | - Zone-based management- Excellent for managing complex network environments                            | Ideal for system administrators needing a robust tool to manage complex firewall rules and zones          |
| __pfSense__         | - FreeBSD-based firewall distribution, also runs on Linux and offers advanced security features                              | - Full firewall, VPN, and routing capabilities- Web-based GUI- Stateful packet inspection            | Great for security-focused environments, used for network perimeter protection, VPNs, and intrusion prevention |
| __IPFire__          | - Open-source firewall distribution with intrusion detection and prevention capabilities                                    | - Stateful firewall- Intrusion detection (Snort)- VPN capabilities                                  | Ideal for organizations needing both a firewall and advanced security features like IDS/IPS               |
| __SELinux__         | - Security-enhanced Linux that enforces mandatory access control (MAC) policies, not a traditional firewall but controls application behavior | - MAC-based control- Prevents unauthorized access- Integrated into major distributions like RHEL      | Best for high-security environments needing strict control over which applications can access network resources |
