---
tags:
  - reviewed
  - python
  - online
  - programming-language
  - ready
---

# sorting-algorithms

## Contents

Sorting refers to arranging data in a particular format. Sorting algorithm specifies the way to arrange data in a particular order. Most common orders are in numerical or lexicographical order.

The importance of sorting lies in the fact that data searching can be optimized to a very high level, if data is stored in a sorted manner.

Visit the following resources to learn more:

- [articleSorting Algorithms in Python](https://realpython.com/sorting-algorithms-python/)
- [articlePython - Sorting Algorithms](https://www.tutorialspoint.com/python_data_structure/python_sorting_algorithms.htm)
- [feedExplore top posts about Algorithms](https://app.daily.dev/tags/algorithms?ref=roadmapsh)

| Sorting Algorithm | Description                                                                 | Time Complexity (Average) | Time Complexity (Worst) | Space Complexity | Stability | Example Code                                      |
|-------------------|-----------------------------------------------------------------------------|----------------------------|-------------------------|------------------|-----------|---------------------------------------------------|
| __Timsort__       | The default sorting algorithm used by Python's built-in `sorted()` and `.sort()`. A hybrid sorting algorithm derived from merge sort and insertion sort. | O(n log n)                 | O(n log n)              | O(n)             | Stable    | ```python <br> lst = [3, 1, 4, 1, 5, 9] <br> sorted_lst = sorted(lst) <br> print(sorted_lst) # Outputs [1, 1, 3, 4, 5, 9] <br>``` |
| __Merge Sort__    | A divide-and-conquer algorithm that splits the list into halves, sorts them, and then merges the sorted halves. | O(n log n)                 | O(n log n)              | O(n)             | Stable    | ```python <br> def merge_sort(lst): <br>     if len(lst) > 1:<br>         mid = len(lst) // 2<br>         L = lst[:mid]<br>         R = lst[mid:]<br>         merge_sort(L)<br>         merge_sort(R)<br>         i = j = k = 0<br>         while i < len(L) and j < len(R):<br>             if L[i] < R[j]:<br>                 lst[k] = L[i]<br>                 i += 1<br>             else:<br>                 lst[k] = R[j]<br>                 j += 1<br>             k += 1<br>         while i < len(L):<br>             lst[k] = L[i]<br>             i += 1<br>             k += 1<br>         while j < len(R):<br>             lst[k] = R[j]<br>             j += 1<br>             k += 1<br>     return lst<br> <br> lst = [3, 1, 4, 1, 5, 9] <br> merge_sort(lst) <br> print(lst) # Outputs [1, 1, 3, 4, 5, 9] <br>``` |
| __Quick Sort__    | A divide-and-conquer algorithm that selects a 'pivot' and partitions the array into elements less than and greater than the pivot. | O(n log n)                 | O(n^2)                  | O(log n)         | Unstable  | ```python <br> def quick_sort(lst): <br>     if len(lst) <= 1:<br>         return lst<br>     pivot = lst[len(lst) // 2]<br>     left = [x for x in lst if x < pivot]<br>     middle = [x for x in lst if x == pivot]<br>     right = [x for x in lst if x > pivot]<br>     return quick_sort(left) + middle + quick_sort(right)<br> <br> lst = [3, 1, 4, 1, 5, 9] <br> print(quick_sort(lst)) # Outputs [1, 1, 3, 4, 5, 9] <br>``` |
| __Bubble Sort__   | A simple comparison-based algorithm that repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order. | O(n^2)                     | O(n^2)                  | O(1)             | Stable    | ```python <br> def bubble_sort(lst): <br>     n = len(lst)<br>     for i in range(n):<br>         for j in range(0, n-i-1):<br>             if lst[j] > lst[j+1]:<br>                 lst[j], lst[j+1] = lst[j+1], lst[j]<br>     return lst<br> <br> lst = [3, 1, 4, 1, 5, 9] <br> bubble_sort(lst) <br> print(lst) # Outputs [1, 1, 3, 4, 5, 9] <br>``` |
| __Insertion Sort__| A simple comparison-based algorithm that builds the final sorted list one item at a time, inserting each new item into its correct position among the already-sorted items. | O(n^2)                     | O(n^2)                  | O(1)             | Stable    | ```python <br> def insertion_sort(lst): <br>     for i in range(1, len(lst)):<br>         key = lst[i]<br>         j = i - 1<br>         while j >= 0 and key < lst[j]:<br>             lst[j + 1] = lst[j]<br>             j -= 1<br>         lst[j + 1] = key<br>     return lst<br> <br> lst = [3, 1, 4, 1, 5, 9] <br> insertion_sort(lst) <br> print(lst) # Outputs [1, 1, 3, 4, 5, 9] <br>``` |
