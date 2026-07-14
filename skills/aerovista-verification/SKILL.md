---
name: aerovista-verification
description: Use before claiming an AeroVista task, feature, deployment, service, booth, release, or production capability is complete or ready.
---

# AeroVista Verification

Evidence must match the claim and the environment.

## State vocabulary

Report each applicable state separately:

- **Designed** — approved behavior and architecture are documented.
- **Implemented** — source code/config exists.
- **Tested** — automated or deterministic checks pass.
- **Committed** — intended changes are preserved in version control.
- **Deployed** — artifact reached the target environment.
- **Configured** — required runtime values and dependencies are present.
- **Enabled** — the capability is active, not merely available.
- **Verified** — observed behavior proves the intended outcome.
- **Documented** — another operator can repeat or recover the workflow.

Never treat these as synonyms.

## Verification layers

Use every layer relevant to the claim:

- unit;
- integration;
- build;
- container/process;
- LAN;
- Tailnet;
- public endpoint;
- authenticated browser;
- mobile/responsive;
- real network or field condition.

A lower layer cannot prove a higher-layer claim. Configuration presence cannot prove runtime behavior. A local build cannot prove public deployment.

## Completion report

```markdown
### Evidence report
- Designed:
- Implemented:
- Tested:
- Committed:
- Deployed:
- Configured:
- Enabled:
- Verified:
- Documented:
- Not verified:
- Remaining risk:
```

Use `Not applicable` where appropriate. Never hide an unverified item by omitting it.
