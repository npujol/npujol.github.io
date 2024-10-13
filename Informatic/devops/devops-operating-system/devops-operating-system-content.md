---
tags:
  - roadmap
  - Informatic
  - devops
  - ready
  - online
---

# devops-operating-system

## Contents

- [[devops-operating-system-ubuntu-debian]]
- [[devops-operating-system-suse-linux]]
- [[devops-operating-system-rhel-derivatives]]
- [[devops-operating-system-freebsd]]
- [[devops-operating-system-openbsd]]
- [[devops-operating-system-netbsd]]
- [[devops-operating-system-windows]]

__Roadmap info from [roadmap website](https://roadmap.sh/devops/operating-system@wjJPzrFJBNYOD3SJLzW2M)__

## Operating system

Operating systems (OS) are fundamental software that manage computer hardware and software resources, providing common services for computer programs. They act as an intermediary between applications and hardware, handling tasks like memory management, process scheduling, file system management, and device control. Common desktop operating systems include Microsoft Windows, macOS, and various Linux distributions. Mobile devices typically run iOS or Android. Server environments often use Linux distributions like Ubuntu Server, Red Hat Enterprise Linux, or Windows Server. Each OS type offers distinct features, user interfaces, and compatibility with different software and hardware. Operating systems play a crucial role in system security, performance optimization, and providing a consistent user experience across diverse computing devices and environments.

- [articleOperating Systems - Wiki](https://en.wikipedia.org/wiki/Operating_system)
- [articleAll you need to know about OS.](https://www.javatpoint.com/operating-system)
- [articleLearn Operating Systems](https://www.tutorialspoint.com/operating_system/os_overview.htm)
- [videoWhat are Operating Systems?](https://www.youtube.com/watch?v=pVzRTmdd9j0)
- [videoOperating Systems](https://www.youtube.com/watch?v=vBURTt97EkA&list=PLBlnK6fEyqRiVhbXDGLXDk_OQAeuVcp2O)

| __Distribution__                                      | __Advantages__                                                                                                                                                                | __Disadvantages__                                                                                                                                      | __Use Case__                                                                                                                     | __Popular Solutions__                              |
| ----------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------- |
| __Ubuntu (Debian-based)__                             | - Wide community support, frequent updates  - Extensive package repositories (APT)  - Great cloud & container support (Kubernetes, Docker)  - Good for automation | - Can be too frequent updates for stable environments  - More resource-intensive compared to minimal distributions                                 | Ideal for modern web development, automation, cloud-native apps, CI/CD pipelines                                                 | Kubernetes, Jenkins, Docker, Ansible, Terraform    |
| __SUSE Linux__                                        | - Enterprise-grade stability (SUSE Linux Enterprise)  - Strong support for SAP applications  - Native tools for Kubernetes (Rancher)  - High scalability          | - Smaller community compared to Ubuntu and Red Hat  - Fewer pre-built packages  - Learning curve for openSUSE compared to more popular distros | Ideal for enterprise environments, SAP workloads, cloud, and hybrid infrastructures                                              | Rancher, SAP HANA, Kubernetes, Prometheus          |
| __RHEL Derivatives (CentOS, AlmaLinux, Rocky Linux)__ | - Enterprise-focused with long-term support (RHEL derivatives)  - Wide corporate use  - Secure with SELinux  - Stable, predictable releases                       | - Requires a subscription for official RHEL  - Slow package updates in RHEL  - CentOS shift to CentOS Stream reduced long-term stability       | Great for large-scale enterprise deployments, on-prem servers, and hybrid cloud infrastructures                                  | OpenShift, Ansible, Satellite, Kubernetes, Jenkins |
| __FreeBSD__                                           | - Focus on performance and security  - ZFS filesystem, jails for virtualization  - Minimal, customizable environment                                                  | - Fewer packages in comparison to Linux distributions  - Smaller community and support for DevOps tooling                                          | Excellent for network appliances, firewalls, and security-conscious deployments, especially in performance-critical environments | pfSense, TrueNAS, Jails                            |
| __OpenBSD__                                           | - Emphasis on security, code simplicity  - Frequent security audits  - Secure by default (minimal services running)                                                   | - Limited hardware support  - Smaller package ecosystem and community compared to Linux                                                            | Perfect for security-focused environments, firewalls, and systems where reliability and security take priority                   | OpenSSH, OpenNTPD, LibreSSL                        |
| __NetBSD__                                            | - Portable across many architectures  - Focus on clean, modular code  - Lightweight and minimal                                                                       | - Not as performant for high-end servers  - Smaller community and toolset for modern DevOps compared to Linux                                      | Suitable for highly portable systems, embedded systems, and niche applications that need to run on diverse hardware              | Embedded systems, small IoT devices, pkgsrc        |
