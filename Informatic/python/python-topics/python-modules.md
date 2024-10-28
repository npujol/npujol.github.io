---
tags:
  - reviewed
  - python
  - online
  - programming-language
  - algorithms
  - advanced
  - ready
  - data-structure
---

# modules

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/python/python-advanced-topics/modules)__

## Modules

Modules refer to a file containing Python statements and definitions. A file containing Python code, for example: `example.py`, is called a module, and its module name would be example. We use modules to break down large programs into small manageable and organized files. Furthermore, modules provide reusability of code.

Visit the following resources to learn more:

- [@article@Python Modules](https://docs.python.org/3/tutorial/modules.html)
- [@article@Modules in Python](https://www.programiz.com/python-programming/modules)

| Characteristic                | Description                                                                                                                                       |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| __Definition__                | A module is a Python file (.py) containing definitions, functions, classes, and variables that can be reused in other Python scripts.             |
| __File Extension__            | Modules are typically Python files with the `.py` extension (e.g., `module_name.py`).                                                             |
| __Importing Modules__         | Modules are imported using the `import` statement (e.g., `import module_name`).                                                                   |
| __Namespace__                 | Each module creates its own namespace, meaning that module contents do not conflict with other code.                                              |
| __Accessing Module Contents__ | After importing, module contents are accessed using dot notation (e.g., `module_name.function_name()`).                                           |
| __Built-in Modules__          | Python comes with many built-in modules (e.g., `os`, `sys`, `math`, `datetime`), which provide a wide range of functionalities.                   |
| __Standard Library__          | The Python Standard Library is a collection of modules that provide standardized solutions for many programming tasks.                            |
| __Custom Modules__            | You can create your own modules by writing Python code in a `.py` file and importing it into other scripts.                                       |
| __Package__                   | A package is a collection of modules in a directory that contains an `__init__.py` file. It allows for the organization of related modules.       |
| __Relative Imports__          | Modules within a package can be imported relatively (e.g., `from . import module_name`).                                                          |
| __Re-importing__              | Re-importing a module using `import` does not reload it. To reload a module, use the `importlib.reload(module_name)` function.                    |
| __Third-Party Modules__       | Python allows the use of third-party modules, which can be installed via package managers like `pip`.                                             |
| __Compiled Modules__          | Modules can also be compiled (e.g., `.pyc` files) for faster loading, though this is usually handled automatically by Python.                     |
| __Module Caching__            | When a module is imported, it is cached in `sys.modules` and subsequent imports use the cached version unless it is explicitly reloaded.          |
| ____name__ Variable__         | The special variable `__name__` in a module is set to `"__main__"` if the module is run as the main program, or to the module's name if imported. |
| __Documentation__             | Modules should include docstrings at the top of the file to describe their purpose and usage. These can be accessed using `help(module_name)`.    |
