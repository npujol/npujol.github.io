---
title: "Configure Discussion"
date: 2025-02-10
tags:
    - discussion
    - fediverse
    - configuration
---

## Discussion Configuration

hugo-brewm supports fediverse-based discussion comments.

### Fediverse Comments

Enable comments in your configuration:

```toml
[params.comments]
    disabled = false
    platform = 'fediverse'
```

### Fediverse Instance

Configure your fediverse instance and username:

```toml
[params.fediverse]
    instance = 'mastodon.social'
    username = 'yourusername'
```

### Per-Page Comments

You can enable/disable comments on individual pages using frontmatter:

```toml
---
comments: true   # Enable comments on this page
---
```

or

```toml
---
comments: false  # Disable comments on this page
---
```

### Muting Discussions

Use the `muted` parameter to mute specific discussions:

```toml
---
muted: true
---
```
