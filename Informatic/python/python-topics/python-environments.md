---
tags:
  - python
  - online
  - ready
---
# python-environments

## pipenv

Pipeline Environment (pipenv) is a tool that aims to bring the best of all packaging worlds (bundled, `requirements.txt`, `setup.py`, `setup.cfg`, etc.) to the Python world. It automatically creates and manages a virtualenv for your projects, as well as adds/removes packages from your Pipfile as you install/uninstall packages. It also generates the ever-important Pipfile.lock, which is used to produce deterministic builds.

Learn more about Pipenv by visiting the following resources:

- [officialPipenv Documentation](https://pipenv.pypa.io/en/latest/)

### virutalenv

`virtualenv` is a tool to create isolated Python environments. It creates a folder which contains all the necessary executables to use the packages that a Python project would need.

Learn more about `virtualenv` by visiting the following resources:

- [officialVirtual Environments](https://virtualenv.pypa.io/en/latest/)

## pyenv

pyenv is a tool for managing multiple versions of the Python programming language on Unix-like systems. It works by setting environment variables to point to the directory where the desired version of Python is installed. This allows you to switch between different versions of Python without having to modify your system’s default Python installation.

Learn more about pyenv by exploring the following resources:

- [article@Official@pyenv GitHub Repository](https://github.com/pyenv/pyenv)

| Feature                | pipenv                                           | pyenv                                           | virtualenv                                      |
|------------------------|--------------------------------------------------|-------------------------------------------------|------------------------------------------------|
| __Description__        | A tool that combines package management and virtual environment management using `Pipfile` and `Pipfile.lock`. | A tool for managing multiple Python versions on your system. | A tool to create isolated Python environments to manage dependencies for different projects. |
| __Primary Use Case__   | Managing project dependencies and virtual environments in a unified way, replacing `requirements.txt` and `virtualenv`. | Managing multiple Python versions on a system, allowing easy switching between versions. | Creating isolated environments to avoid dependency conflicts between projects. |
| __Environment Management__ | Automatically creates and manages virtual environments for your project. | Not focused on environment management; can be used with `virtualenv` to manage environments for different Python versions. | Manages isolated Python environments for projects, typically used alongside `pip` for dependency management. |
| __Dependency Management__ | Uses `Pipfile` for specifying dependencies and `Pipfile.lock` for locking versions, ensuring reproducible environments. | Not a dependency manager; works with tools like `pip`, `pipenv`, or `poetry` for dependency management. | Relies on `pip` or other package managers for dependency management within isolated environments. |
| __Python Version Management__ | Can specify the Python version for a project within the `Pipfile`, but relies on `pyenv` or system Python for version management. | Manages multiple Python versions and allows switching between them. | Does not manage Python versions; it creates environments using the system's Python or a specified Python interpreter. |
| __Ease of Use__        | User-friendly, with commands like `pipenv install` and `pipenv shell` simplifying environment and dependency management. | Simple command-line interface for installing and switching between Python versions (e.g., `pyenv install 3.8.12`, `pyenv global 3.8.12`). | Requires manual setup and activation of environments (`source venv/bin/activate`), but is straightforward for basic use cases. |
| __Integration__        | Integrated with `pip` and `virtualenv` under the hood, providing a higher-level interface. Can be used with `pyenv` for version management. | Works well with `pip`, `virtualenv`, and `pipenv` for managing environments and dependencies. | Typically used in combination with `pip` and can be combined with `pyenv` for version-specific environments. |
| __Reproducibility__    | `Pipfile.lock` ensures that the same dependencies are installed across environments, supporting consistent builds. | Provides consistency in Python versions across different environments and projects. | Ensures isolated environments, reducing the risk of dependency conflicts, but requires manual effort to replicate across machines. |
| __Learning Curve__     | Slightly higher due to its dual role, but provides significant automation and simplification once mastered. | Moderate; understanding how to manage Python versions and integrate with other tools is key. | Lower, but requires understanding of manual environment activation and management. |
| __Example Usage__      | ```shell<br>pipenv install requests<br>pipenv shell<br>``` | ```shell<br>pyenv install 3.9.1<br>pyenv global 3.9.1<br>``` | ```shell<br>virtualenv venv<br>source venv/bin/activate<br>``` |
| __Limitations__        | Can be slower due to the overhead of managing environments and dependencies, less flexible with complex requirements. | Does not handle dependency or environment management; only Python versions. | Requires manual management of environments and does not handle dependency resolution or locking. |

## devenv

- [Documentation](https://devenv.sh/integrations/github-actions/#run-multiple-commands)
- [Usage examples](https://github.com/npujol/tts_stories)
