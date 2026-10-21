# Spec Delta

## Purpose

Provides accurate, real information about the site's owner across the personal pages (author bios, the "Me" page, and the footer), removing placeholder, sample, and demo content.

## ADDED Requirements

### Requirement: Author bio pages contain real information
The author pages (`content/author/author-name/_index.md` and `content/author/a.n.-other/_index.md`) SHALL present a single, accurate biography of the owner instead of template names ("Author Name", "A.N. Other") or lorem ipsum. The bio SHALL include the full name "Naivy Pujol Méndez", the role "Software Engineer", the location "Berlin", and a genuine summary of the author's work (software engineering at Mobilistics), language study (Spanish native, German and English at B1), and technology background (Kubernetes, Go, Python, NixOS, open source).

#### Scenario: Author bio reflects the real owner
- **WHEN** a visitor loads the author bio page(s)
- **THEN** the page displays the author's real name, role, and location and contains no placeholder sample text

### Requirement: "Me" page has a real first-person biography
The "Me" page (`content/me/_index.md`) SHALL contain a short, real first-person description of the owner instead of the placeholder one-liner ("Escéptica, skeptical, skeptisch o Skeksis ¿?").

#### Scenario: "Me" page shows a real description
- **WHEN** a visitor loads the "Me" page
- **THEN** the page shows a genuine self-description about the owner's work and background

### Requirement: Gallery page resolves its TODO
The gallery/pin page (`content/pin.md`) SHALL either contain real gallery content or be removed; it SHALL not be left with an unresolved `TODO:` note.

#### Scenario: Gallery page is ready for visitors
- **WHEN** a visitor loads the gallery page
- **THEN** it shows real images/descriptions and contains no `TODO` marker

### Requirement: Demo/test pages are not published
Pure demo and test pages with only sample content (`content/fullscreen-example.md` and `content/post/markdown-test.md`) SHALL be removed, or replaced with real content. They SHALL not remain live with lorem ipsum / sample text.

#### Scenario: Demo/test pages removed
- **WHEN** a visitor navigates to a previously-demo page
- **THEN** the page returns a 404 (removed) OR shows genuine content (replaced)

### Requirement: Footer copyright year and HTML are valid
The footer (`content/footer.md`) SHALL display the current copyright year (2026) and valid, well-formed HTML; the malformed inline `<fieldset>` cookie banner SHALL be replaced with valid HTML or removed.

#### Scenario: Footer shows current copyright
- **WHEN** a visitor scrolls to the footer
- **THEN** the copyright reads "© 2026" and the HTML renders without malformed markup

### Requirement: Referenced media assets exist
Every image referenced by the changed pages SHALL resolve to an asset that exists in `static/`. In particular, the `{{< figure src="/img/diagram.png" >}}` shortcode in `content/post/tufte-features.md` SHALL be removed or its asset provided.

#### Scenario: No broken image references
- **WHEN** a rendered page is loaded in a browser
- **THEN** all `<img>` elements resolve to existing files (no broken image icons)
