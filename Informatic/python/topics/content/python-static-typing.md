---
tags:
  - python
  - online
  - ready
  - types
---
# python-static-typing

## Static Typing

Static typing can be a powerful tool to help you catch bugs before they happen. It can also help you understand the code you’re working with, and make it easier to maintain and refactor.

Learn more about static typing with the following resources:

- [articleStatic typing in Python](https://typing.readthedocs.io/en/latest/index.html)

### typing

typing is a module in Python that provides runtime support for type hints. The typing module defines a standard set of names that can be used to describe types in the Python language. The typing module was added to the standard library in Python 3.5.

- [officialtyping python](https://docs.python.org/3/library/typing.html)

### mypy

mypy is an optional static type checker for Python that aims to combine the benefits of dynamic (or “duck”) typing and static typing. Mypy combines the expressive power and convenience of Python with a powerful type system and compile-time type checking. Mypy type checks standard Python programs; run them using any Python VM with basically no runtime overhead.

- [officialmypy documentation](https://mypy-lang.org/)

### pyright

pyright is a static type checker for Python. It is a Microsoft product and is written in TypeScript. It is a language server that uses the Language Server Protocol (LSP) to communicate with the editor. It is a good alternative to mypy and pytype.

- [officialPyright Documentation](https://microsoft.github.io/pyright/)

### pyre

pyre is a static type checker for Python. It is a tool that helps you find type errors in your Python code. Pyre is designed to be fast, scalable, and easy to use. It is used at Facebook to help developers catch type errors before they make it to production.

Learn more about pyre from the following resources:

- [officialpyre documentation](https://pyre-check.org/)

### Pydantic

Pydantic is a python library for data validation and settings management using python type annotations.

Learn more from the following resources:

- [officialPydantic documentation](https://docs.pydantic.dev/latest/)

| Feature                  | `typing`                                  | `mypy`                                   | `pyright`                                  | `pyre`                                    | `pydantic`                                 |
|--------------------------|-------------------------------------------|------------------------------------------|--------------------------------------------|-------------------------------------------|--------------------------------------------|
| __Description__          | Provides support for type hints in Python code, offering static type annotations. | A static type checker for Python, designed to work with type hints and catch type errors. | A fast type checker and language server for Python, designed to integrate with VS Code. | A fast, scalable type checker for Python, developed by Facebook, with a focus on large codebases. | A data validation and settings management library using Python type annotations. |
| __Primary Use Case__     | Adding type annotations to Python code for clarity and enabling static type checking. | Performing static type checking in Python codebases to catch type errors during development. | Real-time type checking and integration with development environments like VS Code. | Type checking in large Python codebases, particularly in environments with high performance needs. | Data validation, parsing, and settings management using Python type hints. |
| __Type Checking__        | Provides type hints but does not enforce or check them. | Performs full static type checking based on annotations provided by `typing`. | Offers static type checking, integrated with VS Code for real-time feedback. | Performs type checking with a focus on speed and scalability in large projects. | Uses type hints for data validation but is not a type checker. |
| __Real-time Feedback__   | None, as it's a part of the standard library. | Requires manual execution via command line or integration with an IDE. | Provides real-time feedback when used in VS Code. | Requires manual execution, but can be integrated with CI pipelines. | Provides runtime validation of data, with real-time error feedback when validating data. |
| __IDE Integration__      | Integrated with IDEs for providing type hints and autocompletion. | Integrated with most major Python IDEs, supports plugins for VS Code, PyCharm, etc. | Built specifically for tight integration with VS Code. | Integrated with IDEs through plugins and configurations, but less common than `mypy` and `pyright`. | Integrated with IDEs for autocompletion and data validation, often used alongside `mypy` or `pyright`. |
| __Performance__          | N/A (It's a set of tools, not a checker)  | Slower compared to `pyright` and `pyre`, especially on large codebases. | Very fast, optimized for real-time performance in IDEs. | Extremely fast, designed for large-scale codebases. | Runtime performance depends on validation complexity, but generally efficient. |
| __Ease of Use__          | Easy to use, as it only involves adding annotations. | Requires setup and understanding of Python type hints; can be complex in large projects. | Simple to use within VS Code, with minimal configuration required. | Requires setup, particularly for large codebases; slightly steeper learning curve. | Simple to use for data validation with Python type annotations. |
| __Configurability__      | N/A                                       | Highly configurable through `mypy.ini`, allowing custom rules and behavior. | Configuration handled mostly within VS Code settings; simpler but less flexible than `mypy`. | Highly configurable, especially suited for large, complex codebases. | Configurable via Python classes and models, focused on data validation rather than type checking. |
| __Error Reporting__      | N/A                                       | Detailed error messages, but can be verbose in complex scenarios. | Clear, concise error messages with a focus on usability within IDEs. | Detailed error reporting, designed for large projects where performance is key. | Provides error messages related to data validation failures at runtime. |
| __Runtime vs Static__    | Static typing support, no runtime checking. | Static type checking.                       | Static type checking.                       | Static type checking.                       | Runtime data validation using type hints. |
| __Example Usage__        | ```python<br>from typing import List<br>def foo(bar: List[int]) -> None:<br>    pass<br>``` | ```bash<br>mypy myfile.py<br>``` | Real-time in VS Code with no additional commands needed. | ```bash<br>pyre check<br>``` | ```python<br>from pydantic import BaseModel<br>class User(BaseModel):<br>    name: str<br>    age: int<br>``` |
| __Limitations__          | Cannot enforce types at runtime or catch all errors. | May produce false positives or miss some dynamic typing issues. Slower on large codebases. | Limited to VS Code, less flexible than `mypy`. | Focused on large projects; may be overkill for smaller ones. | Not a full type checker, only validates data against models. |
