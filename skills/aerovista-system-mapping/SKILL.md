---
name: aerovista-system-mapping
description: Use before changing an established AeroVista workflow, cross-machine process, authority boundary, generated artifact, deployment path, or public route.
---

# AeroVista System Mapping

Before proposing implementation, produce a concise system map.

## Required map

Identify:

1. **Source of truth** — authoritative file, database, registry, ledger, or service.
2. **Authority holder** — browser user, operator, NXCore service, workstation script, CI, or hosting provider.
3. **Execution environments** — Windows workstation, NXCore, container, Firebase, browser, mobile, public edge.
4. **Data/artifact flow** — inputs, generated exports, promoted files, deployments, caches, public output.
5. **Trust boundaries** — authentication, roles, secrets, CF Access, Tailnet/LAN/public separation.
6. **Failure checkpoints** — partial completion states and safe resume behavior.
7. **Rollback path** — how to reverse code, data, config, and deployment changes.
8. **Evidence surface** — logs, tests, health endpoints, browser checks, field tests, AVCC records.

## AeroVista-specific rule

Do not collapse distinct authority stages merely because the UI should feel like one action. A single operator button may coordinate several stages, but each stage must retain explicit ownership, status, retry behavior, and evidence.

## Output template

```markdown
### System map
- Source of truth:
- Authority:
- Environments:
- Flow:
- Trust boundaries:
- Failure/resume points:
- Rollback:
- Verification evidence:
```
