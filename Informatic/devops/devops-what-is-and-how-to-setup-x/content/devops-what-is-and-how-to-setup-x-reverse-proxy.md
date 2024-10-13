---
tags:
  - roadmap
  - devops
  - devops-what-is-and-how-to-setup-x
  - ready
  - online
---

# devops-what-is-and-how-to-setup-x-reverse-proxy

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/devops/reverse-proxy@eGF7iyigl57myx2ejpmNC)__

## Reverse Proxy

A reverse proxy is a server that sits between client devices and backend servers, intercepting requests from clients and forwarding them to appropriate backend servers. It acts on behalf of the servers, providing benefits such as load balancing, caching, SSL termination, and security. Reverse proxies can distribute incoming traffic across multiple servers to improve performance and reliability, cache frequently requested content to reduce server load, handle SSL encryption and decryption to offload this task from backend servers, and provide an additional layer of security by hiding server details. Common uses include improving web application performance, enabling microservices architectures, and enhancing security in web hosting environments. Popular reverse proxy software includes NGINX, HAProxy, and Apache with mod\_proxy.

Visit the following resources to learn more:

* [@article@What is Reverse Proxy?](https://www.cloudflare.com/en-gb/learning/cdn/glossary/reverse-proxy/)
* [@article@NGINX documentation](https://www.nginx.com/resources/glossary/reverse-proxy-server/)
* [@article@Understanding NGINX as a Reverse Proxy](https://medium.com/globant/understanding-nginx-as-a-reverse-proxy-564f76e856b2)
* [@video@Proxy vs Reverse Proxy (Real-world Examples)](https://www.youtube.com/watch?v=4NB0NDtOwIQ)

| __Proxy Software__                  | __Description__                                                                                           | __Key Features__                                                                                        | __Use Case__                                                                                               |
| ----------------------------------- | --------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| __Nginx__                           | - Popular open-source web server and reverse proxy, known for its high performance                        | - Load balancing- SSL termination- Caching- Reverse proxy for HTTP, HTTPS, and WebSocket    | Load balancing, SSL offloading, static content caching, and handling high-traffic web applications         |
| __HAProxy__                         | - Open-source, high-performance TCP/HTTP load balancer and reverse proxy                                  | - HTTP/HTTPS reverse proxy- Load balancing- SSL termination- Health checks                  | Used for load balancing in web applications, fault tolerance, and distributing traffic across servers      |
| __Apache HTTP Server (mod_proxy)__  | - A widely-used web server that can also act as a reverse proxy with the `mod_proxy` module               | - HTTP/HTTPS reverse proxy- Load balancing- SSL termination- URL rewriting with mod_rewrite | Reverse proxying for web applications, especially where Apache is already being used as the web server     |
| __Traefik__                         | - Modern reverse proxy and load balancer designed for microservices and containerized environments        | - Dynamic reverse proxy- Automatic discovery (e.g., Docker, Kubernetes)- TLS termination        | Best suited for dynamic microservices architectures and containerized environments (Docker, Kubernetes)    |
| __Varnish Cache__                   | - Reverse proxy and caching HTTP accelerator for high-traffic websites                                    | - HTTP reverse proxy- HTTP caching- Edge-side includes (ESI)                                    | Used primarily for HTTP caching to improve website speed and reduce server load                            |
| __Caddy__                           | - Easy-to-use reverse proxy with automatic HTTPS and modern security features                             | - Automatic HTTPS- HTTP/2 and HTTP/3 support- Simple configuration via JSON or Caddyfile        | Ideal for small to medium-sized projects needing quick setup with built-in HTTPS                           |
| __Envoy Proxy__                     | - High-performance, cloud-native reverse proxy and service mesh                                           | - HTTP/2 and gRPC support- Dynamic service discovery- Load balancing                            | Designed for modern cloud-native and microservices architectures (e.g., Kubernetes)                        |
| __AWS Elastic Load Balancer (ALB)__ | - Managed reverse proxy service provided by AWS to distribute traffic across EC2 instances and containers | - Auto-scaling- SSL termination- Load balancing- Integration with AWS services              | Suitable for AWS-hosted applications, handling traffic distribution across EC2, Lambda, and containers     |
| __F5 BIG-IP__                       | - Enterprise-grade reverse proxy and load balancer with advanced security features                        | - SSL offloading- Application-layer security (WAF)- Load balancing                              | Best for large enterprises requiring advanced load balancing and security in mission-critical environments |
| __Kong__                            | - Open-source API gateway and reverse proxy with a focus on API management                                | - API gateway- Load balancing- Rate limiting, authentication- Integration with plugins      | Ideal for managing APIs, adding security, rate limiting, and monitoring API traffic                        |
