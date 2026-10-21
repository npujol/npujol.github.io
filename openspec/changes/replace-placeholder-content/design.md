# Design

## Context

The site is a Hugo static site using the hugo-brewm theme, built from Markdown under `content/`, `config/`, and `static/`. All affected items are Markdown pages with front matter; there is no application logic, API, or database. Changes are pure content edits to existing files or removal of existing files, then a rebuild.

## Goals / Non-Goals

**Goals:**
- Replace placeholder/demo content with accurate, real information about the author.
- Fix broken references (non-existent image, malformed footer HTML) and the outdated copyright year.
- Keep changes reviewable file-by-file so the user can eyeball each edit before publishing.

**Non-Goals:**
- No template, theme, or `config/` changes.
- No redesign of layout, styling, or navigation.
- No rewriting of the theme-guide posts (`content/post/configure-*.md`, `authoring-*.md`) — left for a separate decision.
- No new assets unless the user confirms one specific asset.

## Decisions

- **Author bios:** decision #3 — single author. `content/author/author-name/_index.md` presents Naivy Pujol Méndez; `content/author/a.n.-other/_index.md` is removed. There is no named collaborator to fill it with.
- **"Me" page:** Replace the single placeholder line with a 2–3 sentence first-person intro. Minimal edit keeps the existing cover image (`/medias/me.jpg`).
- **Demo/test pages:** Replace with real content about the author, not removal. `fullscreen-example.md` becomes a real fullscreen showcase page; `markdown-test.md` becomes a real first post that demonstrates markdown features (headings, lists, blockquote, code, table, math) using genuine content about the author.
- **Gallery (`pin.md`):** Keep the gallery and drop the `TODO`. The images in `static/medias/` (flower, window, guitar, …) are real photos, so the gallery showcases them with real captions written per image.
- **Footer:** Update the hardcoded year to 2026 and replace the `<fieldset>` cookie banner with a clean paragraph. The copyright could instead be templated via `{{ site.copyright }}`, but that is a follow-up improvement, not required here.
- **Broken figure:** Remove the `{{< figure src="/img/diagram.png" >}}` from `tufte-features.md`. Providing the missing image is an option only if the user wants it.

## Risks / Trade-offs

- **Removing published pages** (`fullscreen-example.md`, `markdown-test.md`) can break existing backlinks/shares. → Mitigation: only remove pages confirmed unused; keep removals in git history for rollback.
- **Static copyright year** will go stale each January. → Mitigation: consider templating with `{{ site.copyright }}` later.
- **Author bios merged on two paths** may duplicate content. → Mitigation: acceptable for now; a canonical single author page could follow.

## Open Questions
- **#2 theme-guide posts (user decision, scope unfixed):** user chose "write something about me" over keeping theme documentation. Not yet implemented — ~10 posts (`configure-*.md`, `authoring-*.md`) are affected, so the exact set and wording need confirmation before touching them. All other proposal decisions are resolved (see tasks).
