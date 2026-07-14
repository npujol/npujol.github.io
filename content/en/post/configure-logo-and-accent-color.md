---
title: "Configure Logo and Accent Color"
date: 2025-02-21
tags:
    - logo
    - accent
    - color
categories:
    - configuration
---

## Logo Configuration

The logo can be configured in two ways: as an image mark or as a type-based logo.

### Image Logo Mark

Add the following to your `config.toml`:

```toml
[params.logo]
    logoMark = '/img/logo.svg'
    logoMarkDark = '/img/logo-dark.svg'
```

### Type-based Logo

For a text-based logo, set `logoType` to `true`:

```toml
[params.logo]
    logoType = true
```

This will display the site title as the logo with proper typography.

## Accent Color

The accent color is used for links, highlights, and interactive elements. Configure it in your theme's style settings:

```toml
[params.style.light]
    ac = '#36c'  # Light mode accent

[params.style.dark]
    ac = '#fa0'  # Dark mode accent
```

### Color Options

- `ac` — Accent color (links, buttons, highlights)
- `bg` — Background color
- `fg` — Foreground color (text)
- `mid` — Mid-tone color (secondary text, borders)
