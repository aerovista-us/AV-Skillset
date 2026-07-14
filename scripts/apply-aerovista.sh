#!/usr/bin/env bash
set -euo pipefail
TARGET="${1:-}"
if [[ -z "$TARGET" || ! -d "$TARGET" ]]; then
  echo "Usage: $0 /path/to/AV-Skillset" >&2
  exit 2
fi
SOURCE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
if [[ ! -d "$TARGET/skills" ]]; then
  echo "Target does not look like a Superpowers repository: missing skills/" >&2
  exit 3
fi
cp -R "$SOURCE/skills/." "$TARGET/skills/"
mkdir -p "$TARGET/docs"
cp "$SOURCE/docs/AEROVISTA_ADAPTATION.md" "$TARGET/docs/AEROVISTA_ADAPTATION.md"
cp "$SOURCE/README-AEROVISTA.md" "$TARGET/README-AEROVISTA.md"
echo "AeroVista adaptation applied. Review with: git -C '$TARGET' diff --stat && git -C '$TARGET' diff"
