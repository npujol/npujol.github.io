---
title: "Configure Main Footer"
date: 2025-02-27
tags:
    - footer
    - configuration
categories:
    - configuration
---

## Main Footer Configuration

The main footer can be customized with your own content using the `footer` type pages.

### Creating Footer Content

Create markdown files with `type: 'footer'` in your content directory:

```markdown
---
type: 'footer'
weight: 1
params:
    headless: true
---

**Impressum**

Lorem ipsum dolor sit amet, consectetur adipiscing elit.
```

### Footer Menu

Add footer menu items in your menus configuration:

```toml
[[footer]]
    identifier = "about"
    name = "About"
    url = "/about/"
    weight = 1

[[footer]]
    identifier = "contact"
    name = "Contact"
    url = "/contact/"
    weight = 2
```

### Coffee Stat

Enable the coffee stat feature to show a "buy me a coffee" counter:

```toml
[params]
    coffeeStat = true
```

The `coffee` parameter in footer pages controls the display:

```toml
---
type: 'footer'
coffee: 2
params:
    headless: true
---
```
