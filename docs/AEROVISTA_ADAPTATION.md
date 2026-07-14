# AeroVista Superpowers Adaptation

This fork keeps the upstream Superpowers methodology while adapting it to AeroVista's operating reality.

## Why this fork exists

The upstream workflow treats every creative modification as requiring the same full design gate. That is valuable for high-risk software work but wasteful for isolated booth copy, JSON, image, and documentation edits. AeroVista uses three risk-based modes instead.

## Operating modes

- **Quick Edit:** low-risk, isolated, reversible work.
- **Controlled Change:** bounded behavior or workflow changes.
- **Full Engineering:** production, security, authority, infrastructure, data, deployment, and cross-system work.

## AeroVista extensions

- system and authority mapping;
- deployment safety and clean-tree checks;
- public-brand boundary protection;
- evidence-based completion reporting;
- operational review beyond code quality;
- explicit distinction between implemented, deployed, configured, enabled, and verified.

## Upstream relationship

This repository derives from `obra/superpowers` and retains its MIT license and attribution. AeroVista-specific files should be maintained in clearly named skills so upstream changes can be merged selectively.
