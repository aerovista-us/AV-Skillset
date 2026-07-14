#!/usr/bin/env bash
set -euo pipefail
TARGET="${1:-.}"
required=(
  skills/using-superpowers/SKILL.md
  skills/brainstorming/SKILL.md
  skills/aerovista-operating-mode/SKILL.md
  skills/aerovista-system-mapping/SKILL.md
  skills/aerovista-verification/SKILL.md
  skills/aerovista-deployment-safety/SKILL.md
  skills/aerovista-brand-boundaries/SKILL.md
  skills/aerovista-operational-review/SKILL.md
  docs/AEROVISTA_ADAPTATION.md
  README-AEROVISTA.md
)
missing=0
for path in "${required[@]}"; do
  if [[ ! -f "$TARGET/$path" ]]; then
    echo "MISSING: $path"
    missing=1
  else
    echo "OK: $path"
  fi
done
exit "$missing"
