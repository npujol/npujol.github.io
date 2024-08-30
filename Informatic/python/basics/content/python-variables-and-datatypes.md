---
tags:
  - reviewed
  - python
  - online
  - programming-language
  - syntax
  - data-types
  - variables
  - ready
---

# variables-and-datatypes

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/python/python-basics/variables-and-datatypes)__

### Variables

Variables are used to store information to be referenced and manipulated in a computer program. They also provide a way of labeling data with a descriptive name, so our programs can be understood more clearly by the reader and ourselves. It is helpful to think of variables as containers that hold information. Their sole purpose is to label and store data in memory. This data can then be used throughout your program.

Visit the following resources to learn more:

- [@article@Variables in Python](https://realpython.com/python-variables)
- [@article@W3Schools — Python Variables](https://www.w3schools.com/python/python_variables.asp)
- [@article@Python Data Types](https://www.w3schools.com/python/python_datatypes.asp)
- [@article@Basic Data Types in Python](https://realpython.com/python-data-types/)
- [@article@Python for Beginners: Data Types](https://thenewstack.io/python-for-beginners-data-types/)
- [@video@Python Variables - Python Tutorial for Beginners with Examples | Mosh](https://www.youtube.com/watch?v=cQT33yu9pY8)

### Characteristics

### 1. __Dynamic Typing__

- __No Need for Explicit Type Declaration__: Variables in Python do not require you to declare their data type. The type is determined automatically based on the value assigned.
- __Type Flexibility__: Variables can change types during execution. For example, you can assign an integer to a variable and later assign a string to the same variable.

### 2. __No Need for Variable Declaration__

- __Direct Assignment__: You can create a variable simply by assigning a value to it. There's no need for a separate declaration statement.

### 3. __References and Objects__

- __Everything is an Object__: In Python, all data types are objects, including primitive types like integers and strings.
- __Variables as References__: Variables in Python act as references to objects in memory, not as containers for the objects themselves. Multiple variables can reference the same object.

### 4. __No Explicit Pointer Arithmetic__

- __No Pointers__: Python does not have pointers or explicit pointer arithmetic, unlike languages such as C or C++.

### 5. __Naming Conventions__

- __No Special Characters for Variable Naming__: Unlike some languages that require special characters (like `$` in PHP or `@` in Java), Python variables are named using simple alphanumeric characters and underscores (`_`).
- __Case Sensitivity__: Python variable names are case-sensitive, meaning `myVar` and `myvar` are considered different variables.

### 6. __Variable Scope__

- __Global and Local Scope__: Variables can be defined in a global or local scope. Global variables can be accessed inside functions using the `global` keyword, and nonlocal variables in nested functions using the `nonlocal` keyword.
- __No Block Scope__: Unlike languages like Java or C++, Python does not have block scope within loops or conditionals. Variables defined within such blocks are still accessible outside them, as long as they are in the same function or module.

### 7. __Immutable vs. Mutable Objects__

- __Immutable Variables__: Types like integers, strings, and tuples are immutable, meaning their value cannot be changed after creation. Assigning a new value to an immutable variable actually creates a new object.
- __Mutable Variables__: Types like lists, dictionaries, and sets are mutable, allowing their contents to be changed in place.

### 8. __Multiple Assignment__

- __Tuple Unpacking__: Python allows multiple variables to be assigned values in a single statement, often using tuples or lists (e.g., `a, b, c = 1, 2, 3`).
- __Swapping Variables__: You can swap the values of two variables in a single line without needing a temporary variable (e.g., `a, b = b, a`).

### 9. __Global, Local, and Nonlocal Keywords__

- __`global` Keyword__: Used to modify a global variable inside a function.
- __`nonlocal` Keyword__: Used in nested functions to modify a variable from the nearest enclosing scope that is not global.

### 10. __Garbage Collection__

- __Automatic Memory Management__: Python handles memory management automatically using a garbage collector that recycles objects no longer in use. This is transparent to the user, meaning you don't have to manually free memory.

### 11. __Type Hints (Optional)__

- __Optional Type Annotations__: Python allows for optional type hints to specify the expected data type of variables, but these are not enforced at runtime (e.g., `x: int = 10`).

### 12. __No Constant Variables by Default__

- __No Built-in Constant Keyword__: Python does not have a built-in way to define constants. By convention, variables meant to be constant are named using all uppercase letters (e.g., `PI = 3.14`), but this is not enforced by the language.

### 13. __Variable Lifetime__

- __Lifetime Depends on Scope__: The lifetime of a variable is determined by its scope. Local variables are destroyed after the function exits, whereas global variables persist as long as the program is running.
