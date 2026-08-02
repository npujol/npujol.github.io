---
title: "Configure Menu"
date: 2025-02-04
tags:
    - menu
    - configuration
categories:
    - configuration
---

## Menu Configuration

The menu in hugo-brewm is configured through the `menus` configuration files. You can define menu items in `_default/menus.en.toml` or similar language-specific files.

### Example Configuration

```toml
[[main]]
    identifier = "home"
    name = "Home"
    url = "/"
    weight = 1

[[main]]
    identifier = "posts"
    name = "Posts"
    url = "/post/"
    weight = 2

[[main]]
    identifier = "about"
    name = "About"
    url = "/about/"
    weight = 3
```

### Menu Parameters

- `identifier`: Unique identifier for the menu item
- `name`: Display name shown in the menu
- `url`: URL path the menu item links to
- `weight`: Determines the order of menu items (lower = first)
- `pre`: Optional icon or prefix
- `post`: Optional suffix text

### Multi-level Menus

hugo-brewm supports nested menus through the `parent` parameter:

```toml
[[main]]
    identifier = "resources"
    name = "Resources"
    weight = 2

[[main]]
    identifier = "docs"
    name = "Documentation"
    parent = "resources"
    url = "/docs/"
    weight = 1

[[main]]
    identifier = "examples"
    name = "Examples"
    parent = "resources"
    url = "/examples/"
    weight = 2
```
