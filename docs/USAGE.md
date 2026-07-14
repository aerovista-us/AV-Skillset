# Using AV-Skillset

## Starting a task

The agent should first select an AeroVista operating mode.

A useful explicit prompt is:

```text
Use AV-Skillset for this task.

First select Quick Edit, Controlled Change, or Full Engineering based on actual risk. State the selected mode and why in one sentence.

Do not modify unrelated files. Separate implemented, deployed, configured, enabled, and verified in the completion report.
```

## Quick Edit example

```text
Use AV-Skillset Quick Edit mode.

Update the specified booth JSON copy only.
Validate the JSON, inspect the complete diff, run the smallest relevant build, and verify the affected route.
Do not change shared components, routing, branding, or unrelated content.
```

## Controlled Change example

```text
Use AV-Skillset Controlled Change mode.

Before implementation, give me:
1. the brief design;
2. exact scope and exclusions;
3. affected files;
4. test and verification plan.

Work in an isolated branch where practical. Stop before deployment and report evidence.
```

## Full Engineering example

```text
Use AV-Skillset Full Engineering mode.

Map:
- source of truth;
- authority holder;
- execution environment;
- generated artifacts;
- deployment target;
- public effect;
- rollback path;
- evidence required for verification.

Do not begin implementation until the design is approved.
```

## AeroVista project triggers

Use Full Engineering for work involving:

- authentication, permissions, secrets, or roles;
- NXCore infrastructure;
- Docker, Kubernetes, Firebase, Cloudflare, Traefik, Tailscale, or public exposure;
- Art Localized registration, review, publish, promote, deploy, or analytics authority;
- AVCC recommendations, evidence, release authority, or automation;
- RydeSync WebRTC, TURN, room security, persistence, or field communications;
- migrations, persistent state, recovery, or destructive operations.

## Completion report template

```text
Mode:
Scope:

Designed:
Implemented:
Tested:
Committed:
Deployed:
Configured:
Enabled:
Verified:
Documented:

Evidence:
- command/result
- route/environment checked
- logs or status checked

Not verified:
- remaining environment or field checks

Remaining risk:
- risk and smallest next action
```

## Deployment rule

Preparing a deployment is not permission to deploy.

Before any deployment, the agent must inspect:

```bash
git status
git diff --stat
git diff
```

It must identify every changed or untracked file, confirm the exact target, and state the rollback method.
