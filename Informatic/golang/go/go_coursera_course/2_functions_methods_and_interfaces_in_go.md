---
tags:
- ready
- online
- reviewed
- go
---

# Resumen

## Functions in Go

- it's a set of instructions with a name
- reusability, because you need to declare a function once
- abstraction, because details are hidden in the function, only need to understand operations
- you need to declare the type for the parameters and for the returns
  
### Call by value

- passed arguments are copied to parameters
- modifying parameters has no effect outside the function
- allows data encapsulation, the variables only change inside the function, but for it you have a copying time, and that means slow behavior

### Call by reference

- passed a pointer as an an argument
- the called function has direct access to the called variable in memory
- it's faster, because it doesn't need copying time, but the function may change the original value of the variable
  
## Passing slice instead arrays

- slices contains a pointer to the array
- passing the slice copies the pointer

## Well-Written functions

- Understandability
- Code is functions and data
- if you can find a feature and you can find it quickly
- If you can know about where data is used

## Debugging principles

- code crashes inside a function
- teo options for the cause
  __Function is written incorrectly__
  __Data that the function uses is incorrect__

## Functions guidelines

- Give a good name, the behavior should be understood at a glance and the parameters naming counts too
- Functional cohesion, only one operation, merging behaviors makes code complicated. An operations depends on the context
- Few parameters, because debugging  requires tracing function input data, and it's more difficult with a large number of parameters
  
## Functions complexity

- length
- should be simple
- call hierarchy
- control flow complexity

## First-class functions

- functions can be treated like other types:
- can be declared with a function type
- created dynamically
- can be passed as arguments and returned as values
- can be stored in data structures
  
## Anonymous functions

- doesn't need to have a name
  
## Environment of a function

- set of all names that are valid inside a function
- names defined locally in the function
- lexical scoping
- include names defined in block where the function is defined
- when a function is passed/returned, their environment comes with it

## Deferred functions calls

- can be deferred until de surrounding function completes
- typically used for cleanup activities

## Classes

- collection of data fields and functions that share a well-defined responsibility
- they are templates, contains data fields not data

## Object

- instance of a class
- contains the data
  
## Encapsulation

- Data can be protected from the programmer
- Data can be accessed only using methods
- Go doesn't have a `class` keyword
  
## "classes" in Go

- methods have a receiver type that is associated with them
- you use the dot notation to call this methods
- struct are similar to classes, the struct types compose the fields with associated methods

## Controlling access

- can define public functions to allow access to hidden data
- Hide the fields or methods using the name, a name that stars with lower-case is private

## Limitation of methods

- receiver is passed implicitly as an argument to the method
- method cannot modify the data inside the receiver

## Polymorphism

- it's the ability for an object to have different form depending of the context
- Identical at a high level of abstraction
- Different at a low level of abstraction
- Overriding, subclasses redefines a method inherited from the superclass

## Interfaces

- set of methods signature, name, parameters, returns values but the implementation is not defined
- use to express conceptual similarity between types
- types satisfies an interface if type defines all methods specified in the interface
- interfaces values have two components, dynamic type -> concrete type which it's assigned to, dynamic value -> value of the dynamic type

## concrete vs interface types

- concrete:
- specifies the exact representation of the data and methods
- complete methods implementation is included
- interface
- specifies some method signatures
- implementations are abstracted

## way to use an Interface

- need a function which takes multiple types of parameters
- empty interfaces specifies no methods
- all types satisfy the empty interface
- used to have a function that accept any type as a parameter
- they hides the differences between types, because sometime you need to react to different types in a different way
