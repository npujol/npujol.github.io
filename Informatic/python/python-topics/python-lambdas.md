---
tags:
  - reviewed
  - python
  - online
  - programming-language
  - algorithms
  - advanced
  - lambdas
  - ready
---

# lambdas

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/python/python-advanced-topics/lambdas)__

## Lambdas

Python Lambda Functions are anonymous function means that the function is without a name. As we already know that the def keyword is used to define a normal function in Python. Similarly, the lambda keyword is used to define an anonymous function in Python.

Visit the following resources to learn more:

- [@article@Lambdas in Python](https://www.w3schools.com/python/python_lambda.asp)
- [@article@How to use Lambda functions](https://realpython.com/python-lambda/)
- [@video@Python Lambda Functions](https://www.youtube.com/watch?v=KR22jigJLok)

| Characteristic        | Description                                                                                                                                                                     |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| __Definition__        | A lambda function is a small anonymous function defined using the `lambda` keyword.                                                                                             |
| __Syntax__            | `lambda arguments: expression`                                                                                                                                                  |
| __Anonymous__         | Lambda functions do not have a name and are typically used for short, simple operations.                                                                                        |
| __Single Expression__ | Lambda functions are limited to a single expression and return the result of that expression.                                                                                   |
| __No Statements__     | Lambda functions cannot contain statements (e.g., `if`, `for`, `while`); they are intended for simple operations.                                                               |
| __Usage__             | Commonly used in functions like `map()`, `filter()`, `reduce()`, and as a quick inline function for sorting, callbacks, etc.                                                    |
| __Example__           | `lambda x, y: x + y` creates a function that returns the sum of `x` and `y`.                                                                                                    |
| __Scope__             | Lambda functions have the same scoping rules as regular functions, meaning they can access variables from their enclosing scope.                                                |
| __Return Type__       | Lambda functions automatically return the value of their expression without needing an explicit `return` statement.                                                             |
| __Function Object__   | Despite being anonymous, lambda functions are function objects and can be assigned to variables and called like normal functions.                                               |
| __Limitations__       | Due to their simplicity, lambda functions are less readable and less flexible compared to regular functions. They are best used for short, throwaway operations.                |
| __Performance__       | Similar to regular functions in terms of performance, but they should be used judiciously to keep code readable.                                                                |
| __Integration__       | Lambda functions integrate well with functional programming constructs and are often used where small functions are required without the overhead of full function definitions. |
