---
tags:
  - reviewed
  - python
  - programming-language
  - algorithms
  - advanced
  - regex
  - ready
---

# regular-expressions

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/python/python-advanced-topics/regular-expressions)__

## Regular Expressions

A regular expression is a sequence of characters that specifies a search pattern in text. Usually such patterns are used by string-searching algorithms for “find” or “find and replace” operations on strings, or for input validation.

Visit the following resources to learn more:

- [@article@Regular Expressions in Python](https://docs.python.org/3/library/re.html)
- [@article@Python Regular Expressions](https://developers.google.com/edu/python/regular-expressions)
- [@article@Python - Regular Expressions](https://www.tutorialspoint.com/python/python_reg_expressions.htm)

### VS Code

To transform the obsidian markdown link `[what-is-blockchain](./what-is-blockchain/what-is-blockchain)` into `[[what-is-blockchain]]` using a regex in VSCode, you can use the following pattern:

- Find: regex `\[([^\]]+)\]\(\./\1/\1\)`

- Replace with: regex `[[$1]]`

Explanation:

`\[([^\]]+)\]`: Matches the text inside the square brackets `[ ]`. The ([^\]]+) captures the content between the brackets.

`\(\./\1/\1\)`: Matches the link (./something/something) where something is the same text captured in the first part.
