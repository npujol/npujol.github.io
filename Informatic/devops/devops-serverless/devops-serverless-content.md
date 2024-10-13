---
tags:
  - roadmap
  - Informatic
  - devops
  - ready
  - online
---

# devops-serverless

## Contents

- [[devops-serverless-vercel]]
- [[devops-serverless-cloudflare]]
- [[devops-serverless-azure-functions]]
- [[devops-serverless-aws-lambda]]
- [[devops-serverless-netlify]]

__Roadmap info from [roadmap website](https://roadmap.sh/devops/serverless@1oYvpFG8LKT1JD6a_9J0m)__

## Serverless

Serverless is a cloud-computing execution model where the cloud provider dynamically manages the infrastructure, allowing developers to focus solely on writing code. In this model, resources are automatically allocated and scaled based on demand, and billing is based on actual usage rather than pre-purchased capacity. Serverless architectures are often used for event-driven workloads and microservices, improving development efficiency and reducing operational overhead. Popular platforms for serverless computing include AWS Lambda, Azure Functions, and Google Cloud Functions.

- [articleWhat is Serverless?](https://www.redhat.com/en/topics/cloud-native-apps/what-is-serverless)
- [videoWhat is Serverless?](https://www.youtube.com/watch?v=vxJobGtqKVM)
- [feedExplore top posts about Serverless](https://app.daily.dev/tags/serverless?ref=roadmapsh)

## __serverless platforms__ (Vercel, Cloudflare, Azure Functions, AWS Lambda, and Netlify)

### __1. Vercel__

#### __Pricing__

- __Free Plan__:
  - Up to 1000 __Serverless Function executions/day__.
  - Limited to 12 concurrent executions.
- __Pro Plan__: $20/month.
  - 1 million executions per month included, $0.000008 per additional invocation.
  
#### __Learning Curve__

- __Easy__:
  - Vercel abstracts many complexities. Deployments are simple through Git integrations.
  - Focuses on front-end applications but can trigger back-end tasks via serverless functions.
  - Requires basic knowledge of Node.js or Go for writing serverless functions.

#### __Use Case__

- Best for __web developers__ looking to trigger tasks related to web applications (e.g., sending data to an API after a form submission).
- __Example__: Trigger an HTTP call from a front-end form, or scheduled HTTP request for status checks of an app.

---

### __2. Cloudflare Workers__

#### __Pricing__

- __Free Plan__:
  - Up to 100,000 requests per day.
- __Paid Plan__:
  - $5/month for up to 10 million requests.
  - Additional requests are priced at $0.50 per million.

#### __Learning Curve__

- __Moderate__:
  - Simple for JavaScript developers, as it uses the JavaScript runtime based on V8 (same as Chrome).
  - Integration is fast for basic use cases but can become more complex with larger applications (e.g., managing multiple scheduled tasks).
  - Excellent documentation, but less flexibility compared to AWS for larger tasks.

#### __Use Case__

- __Edge computing__ use cases (executing tasks closer to the user).
- Ideal for lightweight scheduled tasks or API-triggered HTTP requests that need fast, low-latency responses.
- __Example__: Calling an API periodically to refresh cached content at the edge.

---

### __3. Azure Functions__

#### __Pricing__

- __Consumption Plan__ (serverless):
  - 1 million free executions per month.
  - $0.000016/GB-s for additional executions.
  - Pay only for the execution time and memory used.
- __Premium Plan__:
  - Allows for pre-warmed instances and more control over scaling, starting around $0.20/GB-hour.

#### __Learning Curve__

- __Moderate__:
  - Azure Functions integrates deeply with the Azure ecosystem, making it powerful but requiring a learning curve if you're unfamiliar with Azure services.
  - Supports various languages (C#, JavaScript, Python), providing flexibility, but this also adds complexity.
  - Ideal for those already using Azure services.

#### __Use Case__

- Great for enterprise-grade tasks, such as integrating with other Azure services or building event-driven workflows.
- __Example__: Triggering an HTTP call after uploading a file to Azure Blob Storage or running a scheduled task for data processing.

---

### __4. AWS Lambda__

#### __Pricing__

- __Free Tier__:
  - 1 million requests per month.
  - 400,000 GB-seconds of compute time per month.
- __Standard Pricing__:
  - $0.20 per 1 million requests.
  - $0.00001667 per GB-second (based on function duration and memory allocated).
  
#### __Learning Curve__

- __Moderate to Advanced__:
  - Requires a solid understanding of AWS services for more complex setups, such as invoking Lambda from API Gateway, S3 events, or CloudWatch.
  - Steeper learning curve if you need to integrate other AWS services like IAM, VPCs, or Fargate.
  - Excellent documentation, but AWS's flexibility comes at the cost of more initial setup.

#### __Use Case__

- Ideal for building __complex serverless workflows__ that integrate with other AWS services like API Gateway, CloudWatch, or S3.
- __Example__: Triggering Lambda via S3 event to call an external API or using CloudWatch Events for a scheduled job that pings an endpoint.

---

### __5. Netlify Functions__

#### __Pricing__

- __Free Plan__:
  - Up to 125,000 serverless function requests/month.
  - Limited to 100 hours of execution time per month.
- __Pro Plan__: $19/month.
  - 1 million serverless requests/month included, $0.000018 per additional invocation.

#### __Learning Curve__

- __Easy__:
  - Netlify has a user-friendly interface, integrates well with Git, and makes deploying serverless functions simple.
  - Designed with developers in mind for easy deployments, especially for front-end developers.
  - Similar to Vercel but has a lower ceiling in terms of scaling large serverless applications.

#### __Use Case__

- Best for __front-end web developers__ needing light back-end serverless functions (e.g., API calls or form submissions).
- __Example__: Triggering an HTTP call after a form submission or at scheduled intervals for site health checks.

---

### __Summary of Pricing and Use Cases__

| Provider                  | Pricing (Free Tier)                                 | Pricing (Paid Tier)                                   | Learning Curve         | Best Use Case                                         |
|---------------------------|-----------------------------------------------------|------------------------------------------------------|------------------------|------------------------------------------------------|
| __Vercel__                 | 1000 executions/day                                 | $20/month for 1M executions, $0.000008 per extra      | Easy                   | Web apps needing serverless functions and HTTP tasks. |
| __Cloudflare Workers__     | 100,000 requests/day                                | $5/month for 10M requests, $0.50/million extra        | Moderate               | Edge tasks, low-latency API calls.                   |
| __Azure Functions__        | 1M executions/month                                 | $0.000016/GB-s for compute, pre-warm in Premium Plan  | Moderate               | Enterprise workflows with Azure integration.         |
| __AWS Lambda__             | 1M executions/month, 400,000 GB-seconds/month       | $0.20 per million requests, $0.00001667 per GB-second | Moderate to Advanced   | Complex, event-driven workflows with AWS services.    |
| __Netlify Functions__      | 125,000 executions/month                            | $19/month for 1M requests, $0.000018 per extra        | Easy                   | Front-end devs needing simple serverless functions.   |

---

### __Key Takeaways__

- __Vercel & Netlify__: Best suited for front-end developers looking for an easy way to deploy simple serverless functions and trigger HTTP endpoints. Learning curve is minimal, but limited in scaling for larger projects.
- __Cloudflare Workers__: Great for edge computing use cases where low latency is required. Pricing is competitive, and the learning curve is moderate if you’re familiar with JavaScript.
- __Azure Functions & AWS Lambda__: Offer more power and flexibility, making them suitable for enterprise-grade tasks. They are capable of complex, large-scale workflows but come with a steeper learning curve.
