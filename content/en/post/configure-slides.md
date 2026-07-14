---
title: "Configure Slides"
date: 2025-07-24
tags:
    - slide
    - configuration
categories:
    - homepage
---

## Slide Configuration

Slides are used in the home page carousel. Create pages with `type: 'slide'` to add slides.

### Creating Slides

```markdown
---
type: 'slide'
title: 'My Slide Title'
cover: '/img/slide-cover.jpg'
weight: 1
params:
    headless: true
---

This is the slide content.
```

### Slide Parameters

- `type: 'slide'` — Required, identifies this as a slide
- `title` — Slide title displayed in navigation
- `cover` — Cover image URL
- `weight` — Order of slides (lower = first)
- `params.headless: true` — Hides the page from regular listings
- `params.target` — External URL to link to

### Navigation

The slide navigation appears when there are three or more slides. With fewer slides, the navigation is hidden for a cleaner look.

### Flowlines

Enable flowlines in the homepage for a decorative background:

```toml
[params.feed]
    flowlines = true
    flowlinesLimit = 21
```
