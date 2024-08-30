---
tags:
  - reviewed
  - python
  - programming-language
  - ready
---

# binary-search-trees

## Contents

### Binary Search Trees

A binary search tree, also called an ordered or sorted binary tree, is a rooted binary tree data structure with the key of each internal node being greater than all the keys in the respective node’s left subtree and less than the ones in its right subtree

Visit the following resources to learn more:

- [articleHow to Implement Binary Search Tree in Python](https://web.archive.org/web/20230601181553/https://www.section.io/engineering-education/implementing-binary-search-tree-using-python/)
- [articleBinary Search Tree in Python](https://www.pythonforbeginners.com/data-structures/binary-search-tree-in-python)
- [videoTree Data Structure | Illustrated Data Structures](https://www.youtube.com/watch?v=S2W3SXGPVyU)

| Characteristic        | Description                                                                 |
|-----------------------|-----------------------------------------------------------------------------|
| __Definition__        | A Binary Search Tree (BST) is a binary tree where each node has at most two children, and the left child contains values less than the parent node, while the right child contains values greater than the parent node. |
| __Properties__        | - __In-order Traversal__ yields values in ascending order.<br\> - __Search Time__ is O(log n) on average if the tree is balanced.<br\> - __Insertion and Deletion__ can be O(log n) on average. |
| __Balancing__         | BSTs can become unbalanced, leading to O(n) time complexity for operations. Balanced versions like AVL trees and Red-Black trees maintain O(log n) complexity. |
| __Operations__        | - __Search__: Find a value.<br\> - __Insert__: Add a new value.<br\> - __Delete__: Remove a value.<br\> - __Traversal__: Visit nodes in a specific order (in-order, pre-order, post-order). |
| __Memory Usage__      | Uses additional memory for storing pointers (left and right children) in each node. |
| __Applications__      | Used in various applications including searching, sorting, and maintaining sorted data. |
| __Python Libraries__  | Python's standard library does not include a direct implementation of BSTs, but you can use custom implementations or third-party libraries. |

### Examples of Binary Search Tree Implementations in Python

| Library               | Example Usage                                                      |
|-----------------------|--------------------------------------------------------------------|
| __Custom Implementation__ | BSTs can be implemented from scratch by defining a `Node` class and a `BinarySearchTree` class. <br\> __Example:__ <br\> ```python <br> class Node:<br>     def __init__(self, key):<br>         self.left = None<br>         self.right = None<br>         self.value = key<br> <br> class BinarySearchTree:<br>     def __init__(self):<br>         self.root = None<br>     def insert(self, key):<br>         if self.root is None:<br>             self.root = Node(key)<br>         else:<br>             self._insert(self.root, key)<br>     def _insert(self, node, key):<br>         if key < node.value:<br>             if node.left is None:<br>                 node.left = Node(key)<br>             else:<br>                 self._insert(node.left, key)<br>         else:<br>             if node.right is None:<br>                 node.right = Node(key)<br>             else:<br>                 self._insert(node.right, key)<br>``` |
| __`bintrees`__        | A third-party library that provides balanced binary search trees. <br\> __Example:__ <br\> ```python <br> from bintrees import RBTree <br> tree = RBTree() <br> tree.insert(1, 'value1') <br> tree.insert(2, 'value2') <br> print(tree[1]) # Outputs 'value1' <br>``` |
| __`sortedcontainers`__ | A third-party library that provides `SortedList`, `SortedDict`, and `SortedSet`, which use balanced trees internally. <br\> __Example:__ <br\> ```python <br> from sortedcontainers import SortedDict <br> d = SortedDict() <br> d[1] = 'value1' <br> d[2] = 'value2' <br> print(d[1]) # Outputs 'value1' <br>``` |
