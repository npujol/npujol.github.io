---
tags:
  - python
  - online
  - ready
  - programming-language
  - event
---

# Python Events: pyconweb

## Talk 1: Ines Montani > Spacy

[description](https://www.pyconweb.com/activity/what-history-of-web-teach-about-future-of-ai)

- [ ] check [`prodigy`](https://prodi.gy/) from the same as spacy

### S&P case studies

- [ ] real-time commodities trading insights by extracting structured attributes

- [ ] high-security environments

- [ ] used LLM during annotation

### Development workflow

custom models (pytorch) > pretrained models (chatgpt) > custom models(spacy prodigy: distill models into smaller and private components)

| human-facing system | machine-facing models |

| -------------------- | ---------------------------- |

| chatGPT Google | Chatgpt4 Gemini |

| UI/UX, customization | speed, cost accuracy latency |

| ?? | ?? |

## 2. Talk: Daniel Hepper

[description](https://www.pyconweb.com/activity/conquering-the-queue-lessons-from-processing-one-billion-celery-tasks)

## Lessons from processing one billion celery tasks

CTO at Userlike: Customer messaging solution

### Why should I use Celery?

- Execute long running task outside of your request handler

- gracefully handle workload spikes

- schedule tasks

### Use case: Userlike

each websocket-connection becomes a task

#### Why task crashes?

- Exception handling

- Retries

#### Why worker crashes?

- Late acknowledge/idempotent tasks

### Optimization-Performance

- only for small and quick task the selection of a broker is important

- avoid mixing long and short running tasks

- fairness in multi-tenant applications

- graceful degradation

#### Alternative

- rq

- django-background-tasks

- hatchet

## Talk 3: UUID

[description](https://www.pyconweb.com/activity/youre-probably-using-uuids-wrong)

[slides](https://docs.google.com/presentation/d/1VNk_W9qHQzOLkM-WTDwVgSLXCYc-4qExV-LTbhoIJ_c/edit?usp=sharing)

### Why?

- creating decentralized systems

- concurrent systems

- global table lock in SQL

### OSF DCE/RFC 4122 UUID

- v1: is not monotonic without parsing it, not thread-safe
- v2: DCE security variant
- v3: md5 checksum, non-monotonic
- v4: random, non-monotonic, slow to generate, based on probability
- v5: like v3, but with sha
- v6: based in v1, is monotonic, reversed timestamp
- v7: based on time and randomness, monotonic, thread-safe, faster than v4, universally unique
- v8: user-defined

### Why in his use case

- from multi-schema(one per tenant) Why: incremental id create migrations problems

- DB indexes like it

- today: recommendation v7

### Takeaways

- Don’t reinvent the wheel!

- If you really need to, use UUIDv8

- Use v7 for everything if you’re not sure

- Don’t use v4, it’ll slow you down (unless you want to hide the dates)

## Talk 4: MTTR Mean time to recovery

[description](https://www.pyconweb.com/activity/what-is-your-mttr)

### Some takeaways

- CI/CD make it easy and quick

- code: identify critical parts of your code, use precise logs, take advantages from LLM

## Talk 5: Django as an AI Orchestrator

- [description](https://www.pyconweb.com/activity/django-as-an-ai-orchestrator)

## Talk 6: Security python web applications

- [description](https://www.pyconweb.com/activity/securing-python-web-applications)

### Basic Rules

- avoid SQL injections > parameterize queries

- leaking personal information(API Key, configs)> gitignore, fields encryption, data redaction in API, access control

- pip-audit??

- pip-tools??

### Scale Up security

- too many requests for the same user > protect critical endpoints with throttling mechanism

- managing secrets > use Vault or secrets manager

- error handling > don't expose stacktrace to users, configure custom error pages, log all possible errors

### Security edge cases

- Managing Stateful servers > use immutable objects, track objects changes, validate object before operating.

### OWASP ??

- track of top security risks

- tools for improving security ....

## Talk 7: From 25 Microservices to 1 async Modulith

- [description](https://www.pyconweb.com/activity/from-25-microservices-to-one-async-modulith)

- [slides](https://ksai6mvtwlfwmomi.vercel.app/)
