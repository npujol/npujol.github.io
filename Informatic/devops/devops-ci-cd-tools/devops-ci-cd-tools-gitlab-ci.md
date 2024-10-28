---
tags:
  - roadmap
  - devops
  - devops-ci-cd-tools
  - ready
  - online
---

# devops-ci-cd-tools-gitlab-ci

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/devops/gitlab-ci@2KjSLLVTvl2G2KValw7S7)__

## GitLab CI

GitLab CI is an integrated continuous integration and delivery platform within the GitLab ecosystem. It automates the process of building, testing, and deploying code changes through pipelines defined in YAML files. GitLab CI offers features like parallel execution, container registry integration, and auto-DevOps, enabling teams to implement robust CI/CD workflows directly from their GitLab repositories without additional tools or infrastructure.

Visit the following resources to learn more:

* [@official@GitLab Website](https://gitlab.com/)
* [@official@GitLab Documentation](https://docs.gitlab.com/)
* [@video@GitLab CI/CD Pipeline Tutorial for Beginners (2024)](https://www.youtube.com/watch?v=z7nLsJvEyMY)
* [@feed@Explore top posts about GitLab](https://app.daily.dev/tags/gitlab?ref=roadmapsh)

## Example: running pytest tests

```yaml
stages:
  - test

test_python:
  stage: test
  image: python:3.10  # Use the appropriate Python version
  before_script:
    # Update pip and install dependencies
    - python -m pip install --upgrade pip
    - if [ -f requirements.txt ]; then pip install -r requirements.txt; fi
  script:
    # Run pytest
    - pytest
  artifacts:
    # Store the test results and coverage report, if needed
    when: always
    paths:
      - pytest-results.xml
    reports:
      junit: pytest-results.xml
```