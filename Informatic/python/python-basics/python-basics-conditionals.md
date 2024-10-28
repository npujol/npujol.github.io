---
tags:
  - reviewed
  - python
  - online
  - programming-language
  - conditionals
  - ready
---
# conditionals

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/python/python-basics/conditionals)__

## Conditionals

Conditional Statements in Python perform different actions depending on whether a specific condition evaluates to true or false. Conditional Statements are handled by IF-ELIF-ELSE statements and MATCH-CASE statements in Python.

Visit the following resources to learn more:

- [@article@Python Conditional Statements: IF…Else, ELIF & Switch Case](https://www.guru99.com/if-loop-python-conditional-structures.html)
- [@article@Conditional Statements in Python](https://realpython.com/python-conditional-statements/)
- [@article@How to use a match statement in Python](https://learnpython.com/blog/python-match-case-statement/)

| Conditional Type                     | Syntax                               | Description                                                                                   | Use Case                                                   |
| ------------------------------------ | ------------------------------------ | --------------------------------------------------------------------------------------------- | ---------------------------------------------------------- |
| __`if` statement__                   | `if condition:`                      | Executes a block of code if the condition evaluates to `True`.                                | Basic conditional execution.                               |
| __`else` statement__                 | `else:`                              | Executes a block of code if the preceding `if` condition evaluates to `False`.                | Provides an alternative code path.                         |
| __`elif` statement__                 | `elif condition:`                    | Executes a block of code if the previous conditions are `False` and this one is `True`.       | Adds multiple conditions.                                  |
| __Nested `if`__                      | `if condition:` <br\> `if condition:` | An `if` statement inside another `if` or `else` block.                                        | Allows more complex decision trees.                        |
| __`if-else` in one line (Ternary)__  | `x = a if condition else b`          | Conditionally assigns a value in a single line.                                               | Compact conditional assignment.                            |
| __`match` statement__ (Python 3.10+) | `match value:` <br\> `case pattern:`  | Matches a value against multiple patterns, similar to a switch-case in other languages.       | Handling multiple conditions with pattern matching.        |
| __`while` loop with `else`__         | `while condition:` <br\> `else:`      | Executes the `else` block if the `while` loop finishes normally (not interrupted by `break`). | Adding a final action after a loop.                        |
| __`for` loop with `else`__           | `for item in iterable:` <br\> `else:` | Executes the `else` block if the `for` loop finishes normally (not interrupted by `break`).   | Adding a final action after iteration.                     |
| __`try-except`__                     | `try:` <br\> `except Exception:`      | Executes the `except` block if an exception is raised in the `try` block.                     | Error handling based on specific conditions.               |
| __`try-except-else`__                | `try:` <br\> `except:` <br\> `else:`   | Executes the `else` block if no exceptions are raised in the `try` block.                     | Handling code that should run only if no exceptions occur. |
| __`try-finally`__                    | `try:` <br\> `finally:`               | Executes the `finally` block regardless of whether an exception was raised.                   | Ensuring cleanup actions always occur.                     |
| __`with` statement__                 | `with expression as variable:`       | Executes a block of code with context management, ensuring setup and teardown actions occur.  | Managing resources like file streams.                      |
