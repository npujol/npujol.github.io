---
tags:
  - reviewed
  - python
  - online
  - programming-language
  - ready
---

# recursion

## Contents

### Recursion

Recursion is a method of solving a computational problem where the solution depends on solutions to smaller instances of the same problem. Recursion solves such recursive problems by using functions that call themselves from within their own code.

Visit the following resources to learn more:

- [articleRecursion in Python: An Introduction](https://realpython.com/python-recursion/)
- [feedExplore top posts about Recursion](https://app.daily.dev/tags/recursion?ref=roadmapsh)

| Characteristic                | Description                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| __Definition__                | Recursion occurs when a function calls itself directly or indirectly to solve a problem. |
| __Base Case__                | A recursive function must have a base case to terminate the recursion and prevent infinite loops. |
| __Recursive Case__           | The part of the function that includes the recursive call, where the function works towards reaching the base case. |
| __Function Call Stack__      | Each recursive call adds a new frame to the call stack, which stores the function’s state, local variables, and return addresses. |
| __Stack Overflow Risk__      | Deep recursion can lead to stack overflow errors if the recursion depth exceeds the maximum recursion limit, which is configurable using `sys.setrecursionlimit()`. |
| __Memoization__              | Techniques like memoization can be used to optimize recursive functions by caching previously computed results, reducing redundant calculations. |
| __Tail Recursion__           | Tail recursion is a special form of recursion where the recursive call is the last operation in the function. Python does not optimize tail recursion, so it does not offer performance benefits. |
| __Readability__              | Recursion can make code more elegant and easier to understand for problems that have a natural recursive structure, such as tree traversal or factorial computation. |
| __Function Arguments__       | Recursive functions often pass arguments that simplify the problem in each recursive step, moving closer to the base case. |
| __Recursive Depth__          | Python has a default recursion depth limit (typically 1000) to prevent excessive memory use. The limit can be adjusted with `sys.setrecursionlimit()`. |
| __Performance Considerations__ | Recursion can be less efficient in terms of memory and performance compared to iterative solutions due to overhead associated with function calls and stack management. |
| __Example Usage__            | Commonly used for problems involving divide-and-conquer strategies, tree and graph traversals, and mathematical computations like Fibonacci sequences and factorials. |
| __Example Code__             | ```python <br> def factorial(n): <br>     if n == 0: <br>         return 1 <br>     else: <br>         return n * factorial(n - 1) <br> <br> print(factorial(5)) # Outputs 120 <br>``` |
