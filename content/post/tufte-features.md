---
title: "Tufte Features"
date: 2026-02-07
tags:
    - latex
categories:
    - categories
---

## Tufte-Style Features

hugo-brewm implements several features inspired by Edward Tufte's typographic principles.

### Margin Notes

Use the `marginnote` shortcode for margin notes:

```html
{{< marginnote >}}
This note appears in the margin.
{{< /marginnote >}}
```

### Margin Par

Use the `marginpar` shortcode for margin paragraphs:

```html
{{< marginpar >}}
This is a margin paragraph with more detailed content.
{{< /marginpar >}}
```

### Epigraphs

Use the `epigraph` shortcode for epigraphs:

```html
{{< epigraph >}}
The best way to predict the future is to invent it.
— Alan Kay
{{< /epigraph >}}
```

### Theorem

Use the `theorem` shortcode for mathematical theorems:

```html
{{< theorem "Pythagorean Theorem" >}}
In a right triangle, a² + b² = c².
{{< /theorem >}}
```

### Figure

Use the `figure` shortcode for figures with captions:

```html
{{< figure src="/img/diagram.png" caption="Figure 1: A sample diagram" >}}
```
