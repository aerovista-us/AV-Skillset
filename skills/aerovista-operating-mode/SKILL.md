---
name: aerovista-operating-mode
description: Use at the beginning of AeroVista software, infrastructure, content-config, or deployment work to select the minimum safe workflow based on risk.
---

# AeroVista Operating Mode

Select a work mode before implementation. Use the lightest mode that safely fits the task. Escalate immediately if discovery reveals broader risk.

## Mode 1 — Quick Edit

Use only when all are true:

- no authentication, authorization, data model, service, deployment pipeline, or public routing behavior changes;
- change is isolated to copy, URLs, images, static content, documentation, or a narrow config value;
- rollback is obvious and low-risk.

Required workflow:

1. identify the exact file and affected surface;
2. validate syntax/schema;
3. run the smallest relevant build or check;
4. inspect the complete diff;
5. verify the affected route/output;
6. report what was and was not verified.

A design document, worktree, and TDD are optional unless risk expands.

## Mode 2 — Controlled Change

Use for shared components, contained APIs, scripts, workflow adjustments, or moderate refactors without high-risk authority changes.

Required workflow:

1. brief design;
2. explicit scope and exclusions;
3. implementation plan with file paths and checks;
4. isolated branch or worktree where practical;
5. targeted automated tests for deterministic behavior;
6. specification and code-quality review;
7. AeroVista verification report.

## Mode 3 — Full Engineering

Use when work touches any of:

- authentication, authorization, roles, permissions, secrets;
- public exposure, Cloudflare, Tailscale, Traefik, Firebase, Docker, Kubernetes, or production networking;
- database migrations, persistent state, recovery, or destructive operations;
- Art Localized registration, assignment, review, publish, promote, deploy, analytics authority;
- AVCC evidence, release authority, recommendations, or automation;
- RydeSync room security, WebRTC, TURN, persistence, or field communications;
- shared architecture spanning multiple repositories or execution environments.

Required workflow:

1. upstream Superpowers brainstorming/design;
2. `aerovista-system-mapping`;
3. isolated worktree and clean baseline;
4. detailed plan;
5. TDD for deterministic logic and authority boundaries;
6. staged implementation with spec and code reviews;
7. `aerovista-operational-review`;
8. `aerovista-deployment-safety` before deployment;
9. `aerovista-verification` before completion claims.

## Escalation rule

When uncertain, begin with the lower mode only long enough to inspect scope. Escalate before making changes. Never downgrade merely to avoid process.
