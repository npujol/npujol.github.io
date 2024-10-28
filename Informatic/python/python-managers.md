---
tags:
  - reviewed
  - python
  - online
  - programming-language
  - packages
  - ready
---

# managers

## Contents

- [[python-managers-pypi]]
- [[python-managers-pip]]
- [[python-managers-conda]]
- [[python-managers-poetry]]
- [[python-managers-uv]]

__Roadmap info from [roadmap website](https://roadmap.sh/python/managers)__

## Package Managers

Package managers allow you to manage the dependencies (external code written by you or someone else) that your project needs to work correctly.

`PyPI` and `Pip` are the most common contenders but here are some other options available as well:

- [GITHUBPIPX](https://github.com/pypa/pipx)
- [FEEDExplore top posts about Python](https://app.daily.dev/tags/python?ref=roadmapsh)

| Feature            | PyPI                                         | pip                                           | conda                                          | poetry                                       |
|--------------------|----------------------------------------------|----------------------------------------------|------------------------------------------------|----------------------------------------------|
| __Description__    | The Python Package Index, a repository of Python packages. | A package installer for Python that fetches packages from PyPI. | A cross-language package and environment manager that includes Python packages. | A dependency and packaging manager for Python using `pyproject.toml`. |
| __Primary Use Case__ | Hosting and distribution of Python packages. | Installing and managing Python packages from PyPI. | Managing packages and environments, especially in data science. | Dependency management and packaging for Python projects. |
| __Package Format__ | Python packages, including source and binary distributions. | Packages from PyPI, which can be source or wheel distributions. | Packages from Anaconda repository, often binaries and precompiled packages. | Packages specified in `pyproject.toml`, with metadata for building and dependencies. |
| __Installation Command__ | N/A (PyPI is a repository, not a tool). | `pip install <package>`                      | `conda install <package>`                      | `poetry add <package>`                       |
| __Environment Management__ | Not applicable.                            | No built-in environment management. Requires `virtualenv` or `venv`. | Built-in environment management.                | Integrated environment management via `poetry shell`. |
| __Dependency Management__ | N/A (Handled by `pip`).                     | Dependency management is handled via `requirements.txt`. | Dependency management is handled via `environment.yml`. | Dependency management is handled via `pyproject.toml`. |
| __Version Control__ | N/A (Handled by tools using PyPI).           | Requires separate tools (e.g., `pip-tools`) or manual tracking. | Version control through `environment.yml` and Conda channels. | Version control of dependencies through `pyproject.toml`. |
| __Stability__      | Stable and widely used.                      | Stable and widely used.                      | Stable, with a focus on data science and scientific computing. | Stable, with a focus on project management and packaging. |
| __Compatibility__  | Universal Python packages.                    | Python-only.                                | Supports Python and other languages (e.g., R, Julia). | Python-only, with a focus on modern packaging. |
| __Integration__    | Used in conjunction with `pip`.               | Integrates with virtual environments, CI/CD pipelines. | Integrates with data science tools, environment management. | Integrates with version control systems and build tools. |
| __Example Usage__  | N/A (PyPI is accessed via tools like `pip`).  | ```shell <br> pip install requests <br>```  | ```shell <br> conda install numpy <br>```     | ```shell <br> poetry add requests <br>```   |
