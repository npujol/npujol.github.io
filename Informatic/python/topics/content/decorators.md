---
tags:
  - reviewed
  - python
  - programming-language
  - algorithms
  - advanced
  - ready
---

# decorators

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/python/python-advanced-topics/decorators)__

## Decorators

decorator is a design pattern in Python that allows a user to add new functionality to an existing object without modifying its structure. Decorators are usually called before the definition of a function you want to decorate.

Visit the following resources to learn more:

- [@article@Python Decorators](https://www.datacamp.com/tutorial/decorators-python)
- [@video@Decorators in Python](https://www.youtube.com/watch?v=FXUUSfJO_J4)
- [@video@Python Decorators in 1 Minute](https://www.youtube.com/watch?v=BE-L7xu8pO4)

| Characteristic                | Description                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| __Definition__                | Decorators are functions that modify or extend the behavior of other functions or methods. |
| __Syntax__                    | `@decorator_name` applied above the function definition (e.g., `@my_decorator`). |
| __Purpose__                   | Used to add functionality to functions or methods in a reusable and clean way. |
| __Function Wrapper__         | Decorators are essentially wrappers that take a function as input and return a new function with added behavior. |
| __Example__                  | ```python<br>@my_decorator<br>def my_function():<br>    pass```<br\>`my_function` is passed to `my_decorator`, which returns a modified version of `my_function`. |
| __Chaining__                  | Multiple decorators can be applied to a single function, and they are executed in a nested fashion (bottom to top). |
| __Built-in Decorators__       | Python provides built-in decorators like `@staticmethod`, `@classmethod`, and `@property` for methods in classes. |
| __Custom Decorators__         | Can be created by defining a function that takes a function as an argument and returns a new function (e.g., `def my_decorator(func):`). |
| __Usage__                     | Commonly used for logging, access control, memoization, validation, and more. |
| __Function Signature__        | Decorators can alter or extend the behavior of the original function without changing its signature. |
| __Preserving Metadata__       | Use `functools.wraps` within a decorator to preserve the metadata (name, docstring) of the original function. |
| __Example Code__              | ```python<br>from functools import wraps<br><br>def my_decorator(func):<br>    @wraps(func)<br>    def wrapper(*args, __kwargs):<br>        print("Something is happening before the function is called.")<br>        return func(*args, __kwargs)<br>    return wrapper<br><br>@my_decorator<br>def say_hello(name):<br>    print(f"Hello {name}")``` |
| __Class Decorators__          | Decorators can also be applied to classes, modifying or extending their behavior (e.g., adding methods, modifying attributes). |
| __Decorators with Arguments__ | Decorators can accept arguments to customize their behavior (e.g., `@repeat(3)` where `repeat` is a decorator factory). |
