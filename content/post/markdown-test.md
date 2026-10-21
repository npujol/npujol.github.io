---
title: "Why I Migrated My Whole Setup to Nix"
date: 2026-03-01
tags:
    - nixos
    - personal
---

My personal infrastructure — my desktop, my pi's own configuration, and my scripts — lives in a single Nix repository. Here's a short post about why, and a tour of the Markdown features this site supports along the way.

## Headings

# Heading 1
## Heading 2
### Heading 3
#### Heading 4

## Text Formatting

**Bold** for emphasis, *italic* for titles, and ~~strikethrough~~ for the ideas I abandoned.

## Lists

- A system flake that describes every package and service.
- Home-manager modules for my user configuration.
- Host definitions, one per machine, including my pi.
- An overlay with my own small packages.

## A Table

| Piece | Purpose |
|-------|---------|
| flake.nix | System-wide declaration |
| home/ | Per-user configuration |
| hosts/ | One dir per machine |
| scripts/ | Automation |

## Code

```nix
services.nginx = { enable = true; };
```

## Blockquote

> The best way to predict the future is to invent it.
> — Alan Kay

## An Image

![A window in Berlin](/medias/window.jpg)

## Math

$$
\int_0^\infty e^{-x^2} dx = \frac{\sqrt{\pi}}{2}
$$

Footnote reference.[^1]

[^1]: This footnote actually explains my Nix setup, unlike the demo footnote it replaced.
