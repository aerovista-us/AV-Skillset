---
name: using-superpowers
description: AeroVista bootstrap skill. Selects an operating mode before invoking process or implementation skills and preserves user instructions, authority boundaries, and evidence requirements.
---

# Using AeroVista Superpowers

Use skills deliberately, not ceremonially. Before acting, identify the smallest workflow that safely fits the task.

## First decision: operating mode

Invoke `aerovista-operating-mode` before any engineering action. It classifies work as:

1. **Quick Edit** — isolated, reversible, low-risk changes.
2. **Controlled Change** — bounded feature or workflow changes needing a short plan and review.
3. **Full Engineering** — production, security, authority, infrastructure, deployment, data, or cross-system changes.

The selected mode determines which gates are mandatory. Do not force Full Engineering ceremony onto a typo, static copy edit, or isolated JSON correction.

## Skill priority

1. User and repository instructions.
2. AeroVista safety and authority skills.
3. Process skills such as brainstorming or systematic debugging.
4. Domain and implementation skills.

## Mandatory triggers

- Bug or unexplained failure → `systematic-debugging`.
- Production or deployment work → `aerovista-deployment-safety`.
- Existing multi-system workflow → `aerovista-system-mapping`.
- Public brand or creator lane → `aerovista-brand-boundaries`.
- Completion claim → `aerovista-verification`.
- Controlled Change or Full Engineering completion → `aerovista-operational-review`.

## Non-negotiable behavior

- Do not modify unrelated files.
- Do not invent business claims, customer data, services, prices, testimonials, or authority.
- Do not confuse implemented, deployed, configured, enabled, and verified.
- Do not deploy a dirty or unexplained working tree.
- Never claim production success from a local test alone.
- Stop when required authority, secrets, credentials, or environment access is unavailable.

## Communication

Announce the selected operating mode and why in one sentence. Avoid repetitive skill announcements. Keep the user informed at meaningful gates: design approval, destructive action, deployment, and verification.
