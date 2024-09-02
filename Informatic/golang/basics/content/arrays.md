---
tags:
- ready
- online
- reviewed
- go
- summary
- informatic
- data-structure
---

# arrays

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-basics/arrays)__

## Arrays

In Go an `array` is a collection of elements of the same type with a __fixed__ size defined when the array is created.


- [@official@Go Arrays](https://go.dev/tour/moretypes/6)
- [@official@Effective Go: Arrays](https://go.dev/doc/effective_go#arrays)
- [@video@Learn Go Programming - Arrays (by freeCodeCamp on YouTube)](https://youtu.be/YS4e4q9oBaU?t=6473)

There are major differences between the ways arrays work in Go and C. In Go,

- Arrays are values. __Assigning__ one array to another __copies__ all the elements.
- In particular, if you pass an array to a function, it will receive a _copy_ of the array, not a pointer to it.
- The size of an array is part of its type. The types `[10]int` and `[20]int` are distinct.