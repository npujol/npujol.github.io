---
tags:
- informatic
- contents
- general
- programming
- solving
- problems
- programming-solving-problems
- sliding-window
- two-pointer
- fast-slow
- merge-intervals
- cyclic-sort
- in-place-reversal-linked-list
---

# General Programming Solving Problems

## 1. Sliding Window Pattern

Used to track a subset of data that shifts over time, often in arrays or strings.

- **Use Cases:**
  - **Finding maximum/minimum sum of subarrays:** E.g., maximum sum of a subarray of size \(K\).
  - **Checking if a string has a permutation of another:** Useful in substring anagram problems.
  - **Finding the longest substring with at most \(K\) distinct characters:** Common in string processing problems.

### Go Example

```go
func maxSubArraySum(arr []int, k int) int {
    maxSum, windowSum := 0, 0
    for i := 0; i < len(arr); i++ {
        windowSum += arr[i]
        if i >= k-1 {
            if windowSum > maxSum {
                maxSum = windowSum
            }
            windowSum -= arr[i-(k-1)]
        }
    }
    return maxSum
}
```

### Python Example

```python
def max_sub_array_sum(arr, k):
    max_sum = 0
    window_sum = 0
    for i in range(len(arr)):
        window_sum += arr[i]
        if i >= k - 1:
            max_sum = max(max_sum, window_sum)
            window_sum -= arr[i - (k - 1)]
    return max_sum
```

---

## 2. Two Pointer Pattern

Two pointers work from different ends of an array to find a solution.

- **Use Cases:**
  - **Finding pairs in a sorted array that sum up to a target:** E.g., finding two numbers that add up to a given number.
  - **Removing duplicates from a sorted array:** Useful for simplifying arrays.
  - **Finding palindromic substrings:** Helpful for detecting symmetric sequences in strings.

### Go Example

```go
func twoSum(arr []int, target int) []int {
    left, right := 0, len(arr)-1
    for left < right {
        sum := arr[left] + arr[right]
        if sum == target {
            return []int{left, right}
        } else if sum < target {
            left++
        } else {
            right--
        }
    }
    return []int{}
}
```

### Python Example

```python
def two_sum(arr, target):
    left, right = 0, len(arr) - 1
    while left < right:
        sum = arr[left] + arr[right]
        if sum == target:
            return [left, right]
        elif sum < target:
            left += 1
        else:
            right -= 1
    return []
```

---

## 3. Fast & Slow Pointers Pattern

Two pointers move at different speeds to detect cycles.

- **Use Cases:**
  - **Detecting cycles in linked lists:** Ensures there are no infinite loops.
  - **Finding the middle of a linked list:** Useful in splitting or dividing linked lists.
  - **Detecting cycles in arrays:** Applied to circular arrays to identify repeated patterns.

### Go Example

```go
type ListNode struct {
    Val  int
    Next *ListNode
}

func hasCycle(head *ListNode) bool {
    slow, fast := head, head
    for fast != nil && fast.Next != nil {
        slow = slow.Next
        fast = fast.Next.Next
        if slow == fast {
            return true
        }
    }
    return false
}
```

### Python Example

```python
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

def has_cycle(head):
    slow, fast = head, head
    while fast and fast.next:
        slow = slow.next
        fast = fast.next.next
        if slow == fast:
            return True
    return False
```

---

## 4. Merge Intervals Pattern

Merges overlapping intervals.

- **Use Cases:**
  - **Scheduling meeting times:** Avoids conflicts by merging overlapping times.
  - **Range-based data compression:** Compresses data ranges for efficient storage.
  - **Finding gaps in ranges:** Useful for identifying missing ranges.

### Go Example

```go
import (
    "sort"
)

func mergeIntervals(intervals [][]int) [][]int {
    sort.Slice(intervals, func(i, j int) bool {
        return intervals[i][0] < intervals[j][0]
    })
    merged := [][]int{}
    for _, interval := range intervals {
        if len(merged) == 0 || merged[len(merged)-1][1] < interval[0] {
            merged = append(merged, interval)
        } else {
            merged[len(merged)-1][1] = max(merged[len(merged)-1][1], interval[1])
        }
    }
    return merged
}

func max(a, b int) int {
    if a > b {
        return a
    }
    return b
}
```

### Python Example

```python
def merge_intervals(intervals):
    intervals.sort(key=lambda x: x[0])
    merged = []
    for interval in intervals:
        if not merged or merged[-1][1] < interval[0]:
            merged.append(interval)
        else:
            merged[-1][1] = max(merged[-1][1], interval[1])
    return merged
```

---

## 5. Cyclic Sort Pattern

Used when sorting numbers within a range efficiently.

- **Use Cases:**
  - **Finding missing numbers in a consecutive range:** Identifies gaps in series.
  - **Sorting arrays with a known limited range:** Efficiently sorts arrays within a range.
  - **Detecting duplicate numbers:** Useful in finding repetitive entries.

### Go Example

```go
func cyclicSort(nums []int) {
    i := 0
    for i < len(nums) {
        correctIndex := nums[i] - 1
        if nums[i] != nums[correctIndex] {
            nums[i], nums[correctIndex] = nums[correctIndex], nums[i]
        } else {
            i++
        }
    }
}
```

### Python Example

```python
def cyclic_sort(nums):
    i = 0
    while i < len(nums):
        correct_index = nums[i] - 1
        if nums[i] != nums[correct_index]:
            nums[i], nums[correct_index] = nums[correct_index], nums[i]
        else:
            i += 1
```

---

## 6. In-Place Reversal of Linked List Pattern

Reverse a linked list without additional memory allocation.

- **Use Cases:**
  - **Reversing an entire linked list:** Useful for reversing sequences in data.
  - **Reversing a portion of a linked list:** Applied in partial data modifications.
  - **Solving palindrome problems:** Helps identify palindromic sequences.

### Go Example

```go
func reverseList(head *ListNode) *ListNode {
    var prev *ListNode
    current := head
    for current != nil {
        next := current.Next
        current.Next = prev
        prev = current
        current = next
    }
    return prev
}
```

### Python Example

```python
def reverse_list(head):
    prev = None
    current = head
    while current:
        next_node = current.next
        current.next = prev
        prev = current
        current = next_node
    return prev
```
