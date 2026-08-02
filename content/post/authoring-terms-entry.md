---
title: "Authoring Terms Entry"
date: 2025-05-21
tags:
    - terms
    - taxonomy
    - content
categories:
    - authoring
---

## Terms Entry

Terms entries provide metadata for taxonomy pages (tags, categories, series, stages, authors).

### Creating a Terms Entry

Create a directory for your term with an `_index.md` file:

```
content/tags/my-tag/_index.md
```

### Terms Entry Frontmatter

```toml
---
title: "My Custom Tag"
description: "A description of this tag"
---

This is the description shown on the tag listing page.
```

### Custom Taxonomies

hugo-brewm supports custom taxonomies. Define them in your config:

```toml
[taxonomies]
    series = 'series'
    stage = 'stage'
    author = 'author'
```

### Stage Taxonomy

The `stage` taxonomy provides visual indicators for content lifecycle:

- `seedling` — New content
- `budding` — Growing content
- `evergreen` — Established content

Create stage entries:

```toml
---
title: "Seedling"
emoji: "🌱"
---
```

### Author Taxonomy

Author entries can include biographical information:

```toml
---
title: "Author Name"
flair: "Software Engineer"
---

A brief biography of the author goes here.
```
