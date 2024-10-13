---
tags:
  - roadmap
  - Informatic
  - devops
  - ready
  - online
---

# devops-networking-protocols

## Contents

- [[devops-cloud-providers-ftp-sftp]]
- [[devops-cloud-providers-dns]]
- [[devops-cloud-providers-http]]
- [[devops-cloud-providers-https]]
- [[devops-cloud-providers-ssl-tls]]
- [[devops-cloud-providers-ssh]]
- [[devops-cloud-providers-white-grey-listing]]
- [[devops-cloud-providers-smtp]]
- [[devops-cloud-providers-dmarc]]
- [[devops-cloud-providers-imaps]]
- [[devops-cloud-providers-spf]]
- [[devops-cloud-providers-pop3s]]
- [[devops-cloud-providers-domain-keys]]
- [[devops-cloud-providers-osi-model]]

__Roadmap info from [roadmap website](https://roadmap.sh/devops/networking-protocols@9p_ufPj6QH9gHbWBQUmGw)__

## Networking Protocols

Networking protocols are standardized rules and procedures that govern how data is transmitted, received, and interpreted across computer networks. They define the format, timing, sequencing, and error control in data communication. Key protocols include:

1. TCP/IP (Transmission Control Protocol/Internet Protocol): The fundamental suite for Internet communication.
2. HTTP/HTTPS: For web browsing and secure data transfer on the web.
3. FTP/SFTP: File transfer protocols.
4. SMTP/POP3/IMAP: Email communication protocols.
5. DNS: For domain name resolution.
6. DHCP: For automatic IP address assignment.
7. SSL/TLS: For secure, encrypted communication.
8. UDP: For fast, connectionless data transmission.

Here are some of the resources to learn about SSH:

- [articleCloudflare - What is SSL?](https://www.cloudflare.com/learning/ssl/what-is-ssl/)
- [articleCloudflare - What is TLS?](https://www.cloudflare.com/en-gb/learning/ssl/transport-layer-security-tls/)
- [articleEverything you need to know about HTTP](https://cs.fyi/guide/http-in-depth)
- [articleWhat is HTTP?](https://www.cloudflare.com/en-gb/learning/ddos/glossary/hypertext-transfer-protocol-http/)
- [articleWhat is HTTPS?](https://www.cloudflare.com/en-gb/learning/ssl/what-is-https/)
- [articleWhat is DNS?](https://www.cloudflare.com/en-gb/learning/dns/what-is-dns/)
- [videoDNS and How does it Work?](https://www.youtube.com/watch?v=Wj0od2ag5sk)
- [videoDNS Records](https://www.youtube.com/watch?v=7lxgpKh_fRY)
- [videoSSH vs SSL vs TLS](https://www.youtube.com/watch?v=k3rFFLmQCuY)
- [videoOpenSSH Full Guide](https://www.youtube.com/watch?v=YS5Zh7KExvE)

Here's a detailed comparison and explanation of these protocols, along with typical use cases for each:

### 1. __TCP/IP (Transmission Control Protocol/Internet Protocol)__

- __Explanation__:
  - TCP/IP is the core suite of communication protocols used for the Internet and similar networks.
  - TCP handles the reliable transmission of data, ensuring error-free delivery and proper sequencing of packets. IP handles addressing and routing of the packets between sender and receiver.
- __Use Case__:
  - Every form of internet communication, including web browsing, file transfers, and email, relies on TCP/IP. Without it, data wouldn't travel from one device to another.

### 2. __HTTP/HTTPS (Hypertext Transfer Protocol/Secure)__

- __Explanation__:
  - __HTTP__ is used for transmitting hypertext (web pages) between a client (usually a browser) and a web server.
  - __HTTPS__ is HTTP with an added layer of security provided by SSL/TLS encryption.
- __Use Case__:
  - __HTTP__: Used in basic web browsing (e.g., when no sensitive data is involved).
  - __HTTPS__: Used in secure web transactions, such as online banking, shopping, and any form of authentication.

### 3. __FTP/SFTP (File Transfer Protocol/Secure File Transfer Protocol)__

- __Explanation__:
  - __FTP__ is a protocol for transferring files between a client and server, usually in a plain, unencrypted form.
  - __SFTP__ (part of the SSH suite) provides secure file transfer, encrypting the data during transmission.
- __Use Case__:
  - __FTP__: Used in scenarios where security is not a concern, such as publicly accessible file repositories.
  - __SFTP__: Used when securely transferring sensitive files, such as in company networks or remote system backups.

### 4. __SMTP/POP3/IMAP (Simple Mail Transfer Protocol/Post Office Protocol/Internet Message Access Protocol)__

- __Explanation__:
  - __SMTP__ is used for sending emails from a client to a server or between servers.
  - __POP3__ is used for downloading emails from the server to a local device, typically deleting the email from the server after downloading.
  - __IMAP__ allows emails to be read from the server without downloading them, enabling multi-device synchronization.
- __Use Case__:
  - __SMTP__: Sending emails.
  - __POP3__: Use when the email will be accessed from a single device (e.g., some legacy email setups).
  - __IMAP__: Use when you want to access your email from multiple devices (e.g., smartphones, tablets, laptops).

### 5. __DNS (Domain Name System)__

- __Explanation__:
  - DNS is responsible for resolving domain names (like `example.com`) into IP addresses so that devices can locate and communicate with the appropriate servers.
- __Use Case__:
  - Used every time you access a website, send an email, or connect to any service using a domain name instead of a direct IP address.

### 6. __DHCP (Dynamic Host Configuration Protocol)__

- __Explanation__:
  - DHCP automatically assigns IP addresses to devices in a network, ensuring each device has a unique address without manual configuration.
- __Use Case__:
  - Used in most home and enterprise networks to automate the process of assigning IP addresses, especially useful in large networks where manual IP assignment is impractical.

### 7. __SSL/TLS (Secure Sockets Layer/Transport Layer Security)__

- __Explanation__:
  - __SSL__ and its successor __TLS__ are cryptographic protocols designed to provide secure communication over a computer network by encrypting the data.
- __Use Case__:
  - __HTTPS__ is one of the main use cases of SSL/TLS. It's also used in securing emails (SMTP over TLS), VPNs, and securing other data exchange protocols.

### 8. __UDP (User Datagram Protocol)__

- __Explanation__:
  - UDP is a connectionless, lightweight protocol for fast data transmission. Unlike TCP, it doesn't guarantee the reliable delivery of packets (no error checking or re-transmission).
- __Use Case__:
  - __UDP__ is used in real-time applications where speed is more important than reliability, such as video streaming, online gaming, or voice over IP (VoIP) communication.

### Summary of Use Cases

| Protocol/Service   | Primary Use Case Example                                      |
| ------------------ | ------------------------------------------------------------- |
| __TCP/IP__         | General internet communication (Web, email, etc.)             |
| __HTTP/HTTPS__     | Browsing websites, making secure transactions                 |
| __FTP/SFTP__       | Transferring files between systems, secure file exchanges     |
| __SMTP/POP3/IMAP__ | Sending and receiving emails                                  |
| __DNS__            | Resolving domain names to IP addresses                        |
| __DHCP__           | Automatically assigning IP addresses in a network             |
| __SSL/TLS__        | Securing communications like web browsing and email           |
| __UDP__            | Fast, real-time data transmission (e.g., video calls, gaming) |

## # OSI Model

The OSI (Open Systems Interconnection) model is a conceptual framework that standardizes the functions of a telecommunication or computing system into seven abstraction layers. These layers, from bottom to top, are: Physical, Data Link, Network, Transport, Session, Presentation, and Application. Each layer serves a specific purpose in the process of data communication, with lower layers handling more hardware-oriented tasks and upper layers dealing with software and user-interface aspects. The model helps in understanding how data moves through a network, troubleshooting network issues, and designing network protocols and hardware. While not strictly adhered to in real-world implementations, the OSI model remains a valuable educational tool and reference point for network engineers and developers, providing a common language for discussing network operations and architecture.

- [articleWhat is OSI Model?](https://www.cloudflare.com/en-gb/learning/ddos/glossary/open-systems-interconnection-model-osi/)
- [videoOSI Model](https://www.youtube.com/watch?v=dV8mjZd1OtU)
- [videoOSI vs TCP/IP Model](https://www.youtube.com/watch?v=F5rni9fr1yE)
