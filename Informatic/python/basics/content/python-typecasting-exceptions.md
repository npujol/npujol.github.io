---
tags:
  - reviewed
  - python
  - online
  - programming-language
  - types
  - ready
---
# typecasting-exceptions

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/python/python-basics/typecasting-exceptions)__

### Typecasting

The process of converting the value of one data type (integer, string, float, etc.) to another data type is called type conversion. Python has two types of type conversion: Implicit and Explicit.

Visit the following resources to learn more:

- [@article@Type Conversion and Casting](https://www.programiz.com/python-programming/type-conversion-and-casting)
- [@article@Python Exceptions: An Introduction](https://realpython.com/python-exceptions/)
- [@article@Errors and Exceptions](https://docs.python.org/3/tutorial/errors.html)
- [@article@Python Exception Handling](https://www.programiz.com/python-programming/exception-handling)
- [@article@Python Try Except](https://www.w3schools.com/python/python_try_except.asp)

| Feature                | Implicit Type Conversion                                                                 | Explicit Type Conversion                                                                                    |
| ---------------------- | ---------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| __Definition__         | Automatic conversion performed by Python without programmer intervention.                | Manual conversion where the programmer explicitly converts one type to another.                             |
| __Commonly Used__      | When combining operations with different types that Python can safely convert.           | When you need to control or force the conversion between types.                                             |
| __Syntax__             | Performed automatically, e.g., `int_var + float_var`                                     | Uses built-in functions, e.g., `str(var)`, `int(var)`, `float(var)`                                         |
| __Examples__           | `int_var + float_var` (int to float) <br\> `bool_var + int_var` (bool to int)            | `str(10)` (int to string) <br\> `int("5")` (string to int) <br\> `float(3)` (int to float)                  |
| __Risk of Data Loss__  | Minimal, as Python handles it automatically and safely.                                  | Possible if the conversion isn't appropriate (e.g., `int("abc")` raises an error).                          |
| __Error Handling__     | Rarely raises errors since Python checks compatibility.                                  | May raise errors if conversion fails (e.g., converting a string with non-numeric characters to an integer). |
| __Control__            | Less control, relies on Python's internal logic to decide when and how to convert.       | Full control over what and when to convert.                                                                 |
| __Performance Impact__ | Generally efficient but might add a small overhead.                                      | Can be optimized by the programmer, but may require additional processing.                                  |
| __Use Case__           | Simplifies code where conversions are safe and obvious, such as mathematical operations. | Necessary for user input, data processing, or when combining different data types deliberately.             |

## Exceptions

Python exceptions are events that occur during the execution of a program and disrupt the normal flow of the program’s instructions. When an exception is raised, it indicates that an error has occurred. Python provides a way to handle these exceptions using try-except blocks, allowing developers to manage errors gracefully and ensure the program can continue or exit smoothly.

- [officialExceptions Documentation](https://docs.python.org/3/tutorial/errors.html#exceptions)
- [articlePython Exceptions: An Introduction](https://realpython.com/python-exceptions/)
- [articleErrors and Exceptions](https://docs.python.org/3/tutorial/errors.html)
- [articlePython Exception Handling](https://www.programiz.com/python-programming/exception-handling)
- [articlePython Try Except](https://www.w3schools.com/python/python_try_except.asp)
- [videoException Handling in Python](https://www.youtube.com/watch?v=V_NXT2-QIlE)

| Characteristic                 | Description                                                                 |
|--------------------------------|-----------------------------------------------------------------------------|
| __Definition__                 | Exceptions are events that occur during program execution and disrupt normal flow. |
| __Syntax__                     | Exceptions are handled using `try`, `except`, `else`, and `finally` blocks.  |
| __Hierarchy__                  | Python has a built-in exception hierarchy, with `BaseException` at the top and specific exceptions inheriting from it (e.g., `Exception`, `ValueError`, `TypeError`). |
| __Raising Exceptions__         | Use `raise` to manually trigger an exception (e.g., `raise ValueError("error message")`). |
| __Catching Exceptions__        | Use `except` to catch and handle specific exceptions (e.g., `except ValueError:`). |
| __Multiple Exceptions__        | Multiple exceptions can be handled in one block using tuple syntax (e.g., `except (TypeError, ValueError):`). |
| __Else Clause__                | The `else` block runs if no exceptions were raised in the `try` block, allowing code to execute only when the `try` succeeds. |
| __Finally Clause__             | The `finally` block runs no matter what, whether an exception was raised or not, typically used for cleanup actions like closing files. |
| __Custom Exceptions__          | Custom exceptions can be defined by subclassing `Exception` (e.g., `class MyError(Exception): pass`). |
| __Unhandled Exceptions__       | If an exception is not caught, it propagates up the call stack and eventually terminates the program with a traceback message. |
| __Built-in Exceptions__        | Python provides many built-in exceptions (e.g., `ValueError`, `IndexError`, `KeyError`, `TypeError`) for common error situations. |
| __Chained Exceptions__         | Python supports chaining exceptions with `raise ... from` to indicate that one exception was caused by another. |
| __Logging Exceptions__         | Exceptions can be logged using the `logging` module, providing context and traceback information. |
| __Exception Object__           | When caught, an exception instance can be accessed, allowing you to retrieve its message or attributes (e.g., `except Exception as e:`). |
| __Context Management__         | Exceptions are often used with context managers (`with` statements) to ensure that resources are managed properly, even in the face of errors. |
| __Performance__                | Raising and handling exceptions is more expensive than normal control flow, so they should be used for exceptional conditions, not regular control flow. |
