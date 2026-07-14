# AV-Skillset — AeroVista Superpowers

AeroVista's risk-scaled adaptation of the Superpowers software-development methodology.

## What changes

The original methodology remains the foundation. AeroVista adds three operating modes, system mapping, brand safeguards, deployment controls, operational review, and evidence-based completion.

## Install into an existing AV-Skillset clone

### PowerShell

```powershell
.\scripts\apply-aerovista.ps1 -RepositoryPath C:\path\to\AV-Skillset
```

### Bash

```bash
chmod +x scripts/apply-aerovista.sh
./scripts/apply-aerovista.sh /path/to/AV-Skillset
```

The scripts copy the modified and additional files into the clone. Review the diff before committing.

## Recommended Git workflow

```bash
git switch -c aerovista/v0.2.0
git status
git diff --stat
git diff
git add skills docs README-AEROVISTA.md
git commit -m "feat: adapt Superpowers for AeroVista operations"
git push -u origin aerovista/v0.2.0
```

## Verification

Run:

```bash
./scripts/verify-aerovista.sh /path/to/AV-Skillset
```

It checks that all required AeroVista skills and modified bootstrap skills exist.
