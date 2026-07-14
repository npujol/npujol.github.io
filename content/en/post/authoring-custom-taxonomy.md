---
title: "Authoring Custom Taxonomy"
date: 2025-08-22
tags:
    - taxonomy
    - alt
categories:
    - authoring
---

## Custom Taxonomy

hugo-brewm supports custom taxonomies beyond the default tags and categories.

### Defining Taxonomies

Add taxonomies to your `config.toml`:

```toml
[taxonomies]
    series = 'series'
    stage = 'stage'
    author = 'author'
```

### Using Taxonomies in Content

Assign taxonomies in your frontmatter:

```toml
---
title: "My Article"
series: "My Series Name"
stage: "evergreen"
tags:
    - taxonomy
    - alt
---
```

### Series Taxonomy

Series group related articles together. Each article in a series shares the same `series` value.

### Stage Taxonomy

Stages indicate the lifecycle of content:

- **Seedling** 🌱 — New or recently created
- **Budding** 🌿 — Growing and evolving
- **Evergreen** 🌳 — Established and maintained

### Displaying Taxonomies

Taxonomies are displayed on:

- Article pages (in the header and footer)
- Listing pages (grouped by taxonomy)
- Home page (if featuredListing is configured)

### Featured Listing

Configure which taxonomies appear on the home page:

```toml
[params.home]
    featuredListing = ['categories', 'series']
```
