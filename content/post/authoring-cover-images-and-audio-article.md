---
title: "Authoring Cover Images and Audio Article"
date: 2025-09-27
tags:
    - cover
    - images
    - audio
    - media
categories:
    - authoring
---

## Cover Images

Add a cover image to your articles using the `cover` frontmatter parameter:

```toml
---
cover: '/img/cover.jpg'
keepAspectRatio: true
---
```

### Cover Image Guidelines

- Use high-resolution images (recommended: 1200 × 630px)
- Supported formats: JPG, PNG, WebP
- The `keepAspectRatio` parameter maintains the original aspect ratio

### Flowlines Background

The theme supports flowlines as a decorative background:

```toml
[params.feed]
    flowlines = true
    flowlinesLimit = 21
```

## Media Integration

You can embed various media types in your articles:

### Images

```markdown
![Alt text](/img/photo.jpg)
```

### Videos

```html
<video controls>
    <source src="/video/demo.mp4" type="video/mp4">
</video>
```
