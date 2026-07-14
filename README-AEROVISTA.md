# AV-Skillset — AeroVista Superpowers

AeroVista's risk-scaled adaptation of the Superpowers software-development methodology.

This repository is a maintained AeroVista fork of `obra/superpowers`. It keeps the upstream methodology while adding operating modes, authority mapping, deployment controls, brand safeguards, operational review, and evidence-based completion.

## AeroVista operating modes

### Quick Edit

For isolated, reversible work such as:

- copy and documentation;
- URLs and image references;
- booth JSON and static content;
- narrow configuration values.

Quick Edit requires validation, diff review, and verification of the affected output, but does not require a full design document or strict TDD unless the risk expands.

### Controlled Change

For bounded feature, component, script, API, or workflow changes.

Controlled Change requires:

- a brief design;
- explicit scope and exclusions;
- an implementation plan;
- targeted testing;
- specification and code review;
- an AeroVista verification report.

### Full Engineering

For production, security, authority, infrastructure, data, deployment, networking, or cross-system work.

Full Engineering uses the complete Superpowers workflow plus AeroVista system mapping, deployment safety, operational review, and real-environment verification.

## AeroVista skills

The fork adds:

- `aerovista-operating-mode`
- `aerovista-system-mapping`
- `aerovista-verification`
- `aerovista-deployment-safety`
- `aerovista-brand-boundaries`
- `aerovista-operational-review`

It also modifies:

- `skills/using-superpowers/SKILL.md`
- `skills/brainstorming/SKILL.md`

## Core completion standard

AeroVista does not treat these states as interchangeable:

```text
Designed
Implemented
Tested
Committed
Deployed
Configured
Enabled
Verified
Documented
```

Completion reports must state which stages are proven and which remain unverified.

## Repository verification

### PowerShell

```powershell
.\scripts\verify-aerovista.ps1
```

### Bash

```bash
chmod +x scripts/verify-aerovista.sh
./scripts/verify-aerovista.sh .
```

Both scripts confirm that the required AeroVista and modified bootstrap files exist.

## Using the fork

Point your supported coding-agent or plugin workflow at this repository rather than the upstream `obra/superpowers` repository.

Read [`docs/USAGE.md`](docs/USAGE.md) for operating guidance and recommended prompts.

## Updating from upstream

Do not overwrite AeroVista's modified bootstrap files during an upstream sync.

Review upstream changes selectively, especially changes to:

- `skills/using-superpowers/SKILL.md`
- `skills/brainstorming/SKILL.md`
- plugin manifests and hooks;
- test and evaluation infrastructure.

Merge upstream changes on a separate branch, run verification, inspect the complete diff, and test the affected agent harness before merging.

## License and attribution

This repository derives from `obra/superpowers` and remains available under the MIT License. Upstream attribution is preserved in `LICENSE`.
