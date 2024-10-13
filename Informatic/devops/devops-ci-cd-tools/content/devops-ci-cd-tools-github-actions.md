---
tags:
- roadmap
- devops
- devops-ci-cd-tools
- ready
- online
- github
- ci-cd
- todo
- workflow
---

# devops-ci-cd-tools-github-actions

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/devops/github-actions@JnWVCS1HbAyfCJzGt-WOH)__

## GitHub Actions

GitHub Actions is a continuous integration and continuous delivery (CI/CD) platform integrated directly into GitHub repositories. It allows developers to automate software workflows, including building, testing, and deploying applications. Actions are defined in YAML files and triggered by various GitHub events such as pushes, pull requests, or scheduled tasks. The platform provides a marketplace of pre-built actions and supports custom actions. GitHub Actions offers matrix builds, parallel job execution, and supports multiple operating systems and languages. It integrates seamlessly with GitHub’s ecosystem, facilitating automated code review, issue tracking, and project management. This tool enables developers to implement DevOps practices efficiently within their GitHub workflow, enhancing productivity and code quality.

Visit the following resources to learn more:

* [@roadmap@Learn Git & GitHub](https://roadmap.sh/git-github)
* [@official@GitHub Actions Documentation](https://docs.github.com/en/actions)
* [@video@What is GitHub Actions?](https://www.youtube.com/watch?v=URmeTqglS58)
* [@video@Automate your Workflow with GitHub Actions](https://www.youtube.com/watch?v=nyKZTKQS_EQ)
* [@feed@Explore top posts about GitHub](https://app.daily.dev/tags/github?ref=roadmapsh)

## Example: running pytest tests

```yaml
name: Python Test Workflow

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      # Step 1: Checkout the repository
      - name: Checkout code
        uses: actions/checkout@v3

      # Step 2: Set up Python environment
      - name: Set up Python 3.x
        uses: actions/setup-python@v4
```