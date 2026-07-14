---
name: brainstorming
description: Designs new features or behavior before implementation, scaled to AeroVista operating mode and risk.
---

# AeroVista Brainstorming

Turn an idea into a decision-ready design without adding ceremony that exceeds the task's risk.

## Mode-aware gate

### Quick Edit

A separate design document is not required. Confirm:

- exact file or content being changed;
- intended visible effect;
- validation method;
- no authority, security, data, deployment, or shared-component impact.

If any of those assumptions fail, escalate to Controlled Change.

### Controlled Change

Before implementation:

1. Explore current project context.
2. State the goal, constraints, success criteria, and out-of-scope work.
3. Present the recommended approach and at least one meaningful alternative when a real trade-off exists.
4. Obtain approval for a brief design.
5. Save the design when the repository uses design records or the work spans multiple tasks.
6. Transition to `writing-plans`.

### Full Engineering

Use the complete design flow:

1. Map the system and authority boundaries with `aerovista-system-mapping`.
2. Inspect files, documentation, recent changes, deployment path, and source of truth.
3. Clarify requirements one question at a time when clarification is genuinely necessary.
4. Present two or three viable approaches with trade-offs.
5. Cover architecture, components, data flow, error handling, rollback, observability, security, testing, deployment, and verification.
6. Obtain explicit approval.
7. Save the design under `docs/superpowers/specs/YYYY-MM-DD-<topic>-design.md` unless repository instructions specify otherwise.
8. Self-review for placeholders, contradictions, ambiguity, hidden assumptions, and scope creep.
9. Ask the user to review the written specification.
10. Invoke `writing-plans` after approval.

## Existing-codebase rules

- Follow established patterns unless the design explicitly replaces them.
- Improve only code that materially blocks or endangers the approved work.
- No opportunistic modernization, renaming, formatting, or dependency upgrades.
- Identify generated files and never edit them as source unless the repository explicitly requires it.

## AeroVista design checklist

For applicable work, answer:

- What is the source of truth?
- Who or what has authority to approve the action?
- Where does execution occur?
- What artifact is generated or changed?
- What public or operational effect follows?
- How is failure resumed or rolled back?
- What evidence proves completion in the real environment?
