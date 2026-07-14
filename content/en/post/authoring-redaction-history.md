---
title: "Authoring Redaction History"
date: 2025-08-03
tags:
    - history
    - redaction
    - content
---

## Redaction History

hugo-brewm supports redaction history for tracking changes to your content over time.

### Enabling History

History is enabled by default. To disable it:

```toml
[params.posts]
    disableHistory = true
```

### Redaction Syntax

Use strikethrough syntax to redact content:

```markdown
~~This text is redacted~~

This text is visible.
```

### History Display

The redaction history appears in the contentinfo section of each page, showing:

- Previous versions of redacted content
- Timestamps of changes
- Edit history from Git

### Customizing History

You can control the display of history elements:

```toml
[params]
    coffeeStat = true
    unifiedFooter = true
```

- `coffeeStat` — Shows a coffee consumption counter
- `unifiedFooter` — Merges license, footer menu, and coffee stat
