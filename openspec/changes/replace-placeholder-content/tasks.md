# Tasks

## 1. Author bios

- [x] 1.1 Rewrite `content/author/author-name/_index.md` with the real biography: name "Naivy Pujol Méndez", role "Software Engineer", location Berlin, and a genuine summary (software engineering at Mobilistics; Kubernetes, Go, Python, NixOS, open source; studying languages — Spanish native, German and English at B1).
- [x] 1.2 Remove `content/author/a.n.-other/_index.md` — user chose a single author (decision #3).

## 2. "Me" page

- [x] 2.1 Replace the placeholder one-liner in `content/me/_index.md` with a short real first-person intro (keep cover `/medias/me.jpg`).

## 3. Gallery / pin page

- [x] 3.1 Remove the `TODO: tengo que ver como puedo usarlo` line from `content/pin.md`; add a real caption/description for each of the existing gallery photos from `static/medias/` (flower, window, guitar, …). Keep the page — the photos are real content.

## 4. Demo / test pages (decision #1: replace with real content about the Nix project)

- [x] 4.1 Replace `content/fullscreen-example.md` with a fullscreen essay about my Nix repository (system flake + home-manager + host definitions + scripts, including the pi's config): why it was a good idea and how it helps (reproducibility, rollbacks, one source of truth).
- [x] 4.2 Replace `content/post/markdown-test.md` with a real first post "Why I Migrated My Whole Setup to Nix" that still demonstrates markdown (headings, lists, table, code, blockquote, image, math). Removed the `example.com` placeholder and the placeholder image.

## 5. Footer (decision #5: hardcode "© 2026")

- [x] 5.1 Update `content/footer.md` copyright to "© 2026".
- [x] 5.2 Replace the malformed inline `<fieldset>` cookie banner with a valid `<p>` paragraph.

## 6. Broken image reference (decision #4: use a real asset)

- [x] 6.1 Replace the `{{< figure src="/img/diagram.png" ... >}}` in `content/post/tufte-features.md` with the existing asset `/medias/flower.jpg`. No new asset added.

## 7. Verify

- [x] 7.1 Confirm no `TODO`, `A.N. Other`, "Author Name", "Lorem ipsum", or `example.com` placeholders remain in the touched files.
- [x] 7.2 Confirm all referenced media files exist under `static/`.
- [x] 7.3 Build the site with Hugo and check for errors / broken links.
