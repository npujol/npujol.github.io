---
tags:
- ready
- online
- reviewed
- go
- summary
- informatic
- data-structure
- data-representation
---

# slices

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-basics/slices)__

## Slices

Slices are similar to arrays but are more powerful and flexible. Like arrays, slices are also used to store multiple values of the same type in a single variable. However, unlike arrays, the length of a slice can grow and shrink as you see fit.

- Slices hold references to an underlying array, and if you assign one slice to another, both refer to the same array.

- [@official@Go Slices](https://go.dev/tour/moretypes/7)
- [@official@Effective Go: Slices](https://go.dev/doc/effective_go#slices)
- [@article@Slices in Go](https://www.w3schools.com/go/go_slices.php)
- [@video@Learn Go Programming - Slices (by freeCodeCamp on YouTube)](https://youtu.be/YS4e4q9oBaU?t=6473)


## Array vs Slice

__Slices:__

- Slices are _similar to arrays_, but are more powerful and _flexible_.
- Like arrays, slices are also used to store _multiple values of the same type_ in a single variable.
- However, unlike arrays, the _length_ of a slice can _grow_ and _shrink_ as you see fit.

### Capacity vs length

- __len() function__ - returns the length of the slice (the number of elements in the slice)
- __cap() function__ - returns the capacity of the slice (the number of elements the slice can grow or shrink to)
