---
tags:
  - roadmap
  - devops
  - devops-ci-cd-tools
  - ready
  - online
---

# devops-ci-cd-tools-circle-ci

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/devops/circle-ci@1-JneOQeGhox-CKrdiquq)__

## CircleCI

CircleCI is a popular continuous integration and continuous delivery (CI/CD) platform that automates the build, test, and deployment processes of software projects. It supports a wide range of programming languages and integrates with various version control systems, primarily GitHub and Bitbucket. CircleCI uses a YAML configuration file to define pipelines, allowing developers to specify complex workflows, parallel job execution, and custom environments. It offers features like caching, artifact storage, and Docker layer caching to speed up builds. With its cloud-based and self-hosted options, CircleCI provides scalable solutions for projects of all sizes, helping teams improve code quality, accelerate release cycles, and streamline their development workflows.

Visit the following resources to learn more:

* [@official@CircleCI Website](https://circleci.com/)
* [@video@CircleCI Tutorial for Beginners](https://www.youtube.com/watch?v=_XaYv9zvHUk)
* [@feed@Explore top posts about CI/CD](https://app.daily.dev/tags/cicd?ref=roadmapsh)

## Example: running pytest tests

```yaml
version: 2.1

jobs:
  test:
    docker:
      - image: circleci/python:3.10  # Choose your Python version
    steps:
      # Step 1: Checkout the code
      - checkout

      # Step 2: Set up dependencies
      - run:
          name: Install dependencies
          command: |
            python -m pip install --upgrade pip
            if [ -f requirements.txt ]; then pip install -r requirements.txt; fi

      # Step 3: Run tests with pytest
      - run:
          name: Run pytest
          command: pytest

workflows:
  version: 2
  test:
    jobs:
      - test
