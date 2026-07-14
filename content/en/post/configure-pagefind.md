---
title: "Configure Pagefind Search"
date: 2025-02-08
tags:
    - pagefind
    - search
    - configuration
---

## Pagefind Search Configuration

hugo-brewm supports Pagefind for client-side search functionality.

### Enabling Search

Add the following to your `config.toml`:

```toml
[params.search]
    enable = true
    pagefind = true
```

### Building Search Index

After building your site, run Pagefind to generate the search index:

```bash
npx @pagefind/cli --source public
```

### Search Fallback

When JavaScript is disabled, a fallback search box is shown. You can configure the fallback provider:

```toml
[params.search]
    enable = true
    pagefind = true
    fallback = 'mojeek'
```

Options for fallback:
- `mojeek` — Mojeek search engine
- `duckduckgo` — DuckDuckGo (default if not specified)

### Customizing Search

Pagefind automatically indexes your content. You can customize indexing behavior using frontmatter:

```toml
---
data-pagefind-ignore: true
---
```

This tells Pagefind to skip indexing the page entirely.
