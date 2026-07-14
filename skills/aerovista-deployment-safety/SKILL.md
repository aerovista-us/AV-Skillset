---
name: aerovista-deployment-safety
description: Use before any AeroVista deploy, promote, migration, restart, public exposure, release, or destructive production action.
---

# AeroVista Deployment Safety

Production action requires explicit user authorization. Planning or preparing a deployment is not authorization to execute it.

## Preflight

1. Confirm target repository, branch, environment, service, and public domain.
2. Run `git status`, `git diff --stat`, and inspect the full diff.
3. Identify every changed/untracked file and whether it belongs to the approved task.
4. Refuse to deploy mixed unrelated changes unless the user explicitly accepts them.
5. Confirm tests/builds and record exact commands/results.
6. Confirm secrets are not present in tracked files or output.
7. Identify backup/rollback and current known-good revision.
8. Confirm deployment command and working directory.
9. State expected public effect and interruption risk.

## Post-deployment

1. verify process/container health;
2. verify target route or API from the relevant network boundary;
3. verify authentication/authorization where relevant;
4. inspect logs for new errors;
5. perform rollback if the acceptance checks fail and rollback is authorized;
6. produce an AeroVista evidence report.

## Prohibited shortcuts

- Do not infer success from a zero exit code alone.
- Do not claim public deployment from a local build.
- Do not expose an internal service publicly merely to simplify testing.
- Do not edit production data to make a test pass without explicit approval.
