# Proposal

## Why

The site ships with leftover placeholder content — lorem ipsum text, the literal template names "Author Name" and "A.N. Other", an unresolved `TODO:` note, an outdated copyright year, and demo/example pages that never got customized. A personal website should present real information about its owner instead of sample text, so this change replaces those placeholders with accurate content about the author, Naivy Pujol Méndez.

## What Changes

- Replace the two author bio pages (`content/author/author-name/_index.md` and `content/author/a.n.-other/_index.md`) with real biographies: name "Naivy Pujol Méndez", role "Software Engineer & Language Teacher", location Berlin, and a genuine summary drawn from the author's work, tech stack, and language-teaching background.
- Replace the one-line placeholder bio on the "Me" page (`content/me/_index.md`) with a short real first-person description.
- Give the gallery page (`content/pin.md`) real content: remove the `TODO:` note and add real captions for the gallery. The photos in `static/medias/` (flower, window, guitar, etc.) are real content, so the gallery stays and showcases them.
- Replace the pure demo/test pages with real content (not removed): `content/fullscreen-example.md` becomes a real fullscreen showcase about the author, and `content/post/markdown-test.md` becomes a real first post that demonstrates markdown features.
- Fix `content/footer.md`: update the hardcoded copyright from "© 2024" to the current year (2026, matching the config `params.copyright`) and replace the malformed inline `<fieldset>` cookie banner with valid HTML.
- Fix `content/post/tufte-features.md`: the `{{< figure src="/img/diagram.png" >}}` shortcode points at a non-existent image; either drop the figure or provide the asset.

## Capabilities

### New Capabilities
- `personal-content`: The personal pages of the site SHALL present accurate, real information about the author rather than placeholder, sample, or demo text. This covers the author bios, the "Me" page, the gallery/pin page, and the footer bio.

### Modified Capabilities
- _(none yet — see Impact for scope decisions that, once confirmed, will add a modified capability, e.g. `content-documentation` for the theme-guide posts.)_

## Impact

- **Files:** `content/author/author-name/_index.md`, `content/author/a.n.-other/_index.md`, `content/me/_index.md`, `content/pin.md`, `content/footer.md`, `content/fullscreen-example.md`, `content/post/markdown-test.md`, `content/post/tufte-features.md`.
- **Site behaviour:** No template or theme behaviour changes. This is a content change only; the hugo-brewm theme and `config/` stay untouched.
- **Images:** `/medias/me.jpg` and the gallery images (`/medias/flower.jpg`, `window.jpg`, `guitar.jpg`) already exist in `static/`. The only missing asset is `/img/diagram.png` referenced in `tufte-features.md`.
- **Scope decisions requiring confirmation before apply (not counted as capabilities yet):**
  1. `content/fullscreen-example.md` and `content/post/markdown-test.md` — both replaced with real content (decision made); the exact wording of the new content needs the author's input.
  2. The theme-guide posts under `content/post/configure-*.md` and `content/post/authoring-*.md` (e.g. configure-slides, configure-menu, tufte-features, authoring-fullscreen-content): keep them as documentation about the hugo-brewm theme, or remove them? Rewriting these is not "information about me," so they are intentionally left out of the core capability pending a decision.
