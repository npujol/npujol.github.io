---
tags:
  - reviewed
  - python
  - programming-language
  - functions
  - ready
---

# functions

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/python/python-basics/functions)__

## Functions

In programming, a function is a reusable block of code that executes a certain functionality when it is called. Functions are integral parts of every programming language because they help make your code more modular and reusable.

In Python, you define a function with the `def` keyword, then write the function identifier (name) followed by parentheses and a colon.

Visit the following resources to learn more:

- [@article@Python Functions – How to Define and Call a Function](https://www.freecodecamp.org/news/python-functions-define-and-call-a-function/)
- [@article@Python Functions - W3Schools](https://www.w3schools.com/python/python_functions.asp)
- [@article@Built-in Functions in Python](https://docs.python.org/3/library/functions.html)

| Function Type                   | Syntax Example                                   | Description                                                                                 | Characteristics                                   | Use Case                                           |
|---------------------------------|--------------------------------------------------|---------------------------------------------------------------------------------------------|---------------------------------------------------|----------------------------------------------------|
| __Regular Function__            | `def func_name(params):`                         | Defines a function with a name and optional parameters.                                     | Can have default parameters, return values.       | General-purpose functions.                         |
| __Lambda Function__             | `lambda params: expression`                      | Defines a small anonymous function, typically used for short, simple operations.            | Single expression, no statements, returns result. | Quick, inline operations, often in `map`, `filter`.|
| __Generator Function__          | `def func_name(params):` <br\> `yield value`      | A function that returns an iterator and uses `yield` to produce a sequence of values lazily.| Maintains state, can be iterated over.            | Generating large sequences without storing them in memory. |
| __Recursive Function__          | `def func_name(params):` <br\> `func_name()`      | A function that calls itself to solve a problem by breaking it down into smaller subproblems.| Must have a base case to avoid infinite recursion.| Tasks like traversing data structures, solving problems that can be broken down into similar subproblems. |
| __Higher-Order Function__       | `def func_name(func):` <br\> `return func`        | A function that takes one or more functions as arguments or returns a function.             | Functions can be passed as arguments or returned. | Functional programming, callbacks, decorators.     |
| __Built-in Function__           | `len()`, `print()`, `range()`                    | Functions that are built into Python and available without importing any modules.            | Directly accessible, part of Python's standard library. | Common tasks like printing, measuring length, iterating. |
| __Decorated Function__          | `@decorator` <br\> `def func_name(params):`       | A function that is modified by a decorator, which adds functionality before or after the function. | Allows cross-cutting concerns like logging, access control. | Enhancing or modifying the behavior of functions.  |
| __Coroutine Function__          | `async def func_name(params):`                   | Defines an asynchronous function that can use `await` to pause and resume execution.        | Runs asynchronously, works with event loops.      | Concurrency, non-blocking I/O operations.          |
| __Method (Instance Method)__    | `def method_name(self, params):`                 | A function defined within a class that operates on an instance of the class.                | Requires `self` parameter, called on instances.   | Operating on data within an object, instance-specific behavior. |
| __Class Method__                | `@classmethod` <br\> `def method_name(cls, params):` | A function that operates on the class itself rather than instances of the class.           | Requires `cls` parameter, called on class.        | Factory methods, methods that affect the class as a whole. |
| __Static Method__               | `@staticmethod` <br\> `def method_name(params):`  | A function within a class that does not operate on instances or the class itself.           | No `self` or `cls` parameter, called on class.    | Utility functions related to a class but not dependent on instance or class data. |
| __Magic Method__                | `def __init__(self, params):`                    | Special methods with double underscores used for operator overloading and object behavior.  | Follow `__methodname__` naming convention.        | Overloading operators, defining object behavior (e.g., `__str__`, `__add__`). |
