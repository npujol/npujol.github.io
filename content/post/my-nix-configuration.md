---
type: 'fullscreen'
title: 'My Nix Configuration'
---

## Everything I Run, Described in One Flake

My personal infrastructure lives in a single Nix repository: a system flake, home-manager modules, host definitions for each machine, and an overlay for my own packages. My pi's own configuration is committed there alongside everything else — the flake, the home config, the hosts, the scripts.

## Why I Did It

Reproducibility. Before Nix, setting up a new machine meant re-running a random assortment of shell commands and hoping they matched last time. Now "installing my environment" means building a generation and switching to it. If something breaks, I roll back to the last known-good generation. My machine and my pi's config share the same source of truth, so anything I figure out on one applies to the other.

## How It Helps Me

- **Reproducible machines.** Every machine is built from the same files; there is no drift.
- **Rollbacks.** A bad change is one command away from undone.
- **One place to look.** My desktop, my pi, and my scripts are reviewed together in git, so my setup is actually reviewable.
