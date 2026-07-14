---
name: aerovista-operational-review
description: Use after specification and code-quality review for substantial AeroVista changes to ensure the result can be operated, recovered, audited, and understood after the coding session ends.
---

# AeroVista Operational Review

Code correctness is necessary but insufficient.

## Review questions

### Operability
- Can the user or operator run this again without reconstructing the conversation?
- Is the command, working directory, environment, and prerequisite clear?
- Is the next action visible after success or partial failure?

### Recoverability
- Is the operation idempotent or safely resumable?
- What happens if step N succeeds and N+1 fails?
- Are backups, rollback, and retry instructions real and tested where practical?

### Observability
- Is there a status, log, health check, audit record, or AVCC evidence surface?
- Can an operator distinguish waiting, running, failed, partially complete, and complete?

### Security and authority
- Is authority enforced server-side or at the proper trusted layer?
- Are secrets protected?
- Did convenience move responsibility into an untrusted browser or public client?

### Documentation
- Are canonical docs updated rather than creating a competing source of truth?
- Are obsolete instructions removed or clearly superseded?

## Verdict

Return one of:

- `Operationally ready`
- `Ready for controlled pilot`
- `Implemented but not operationally ready`
- `Blocked`

Include blockers and the smallest next action for each.
