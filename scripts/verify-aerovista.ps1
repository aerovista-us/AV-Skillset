param(
  [string]$RepositoryPath = "."
)

$ErrorActionPreference = "Stop"
$repo = (Resolve-Path $RepositoryPath).Path

$required = @(
  "skills/using-superpowers/SKILL.md",
  "skills/brainstorming/SKILL.md",
  "skills/aerovista-operating-mode/SKILL.md",
  "skills/aerovista-system-mapping/SKILL.md",
  "skills/aerovista-verification/SKILL.md",
  "skills/aerovista-deployment-safety/SKILL.md",
  "skills/aerovista-brand-boundaries/SKILL.md",
  "skills/aerovista-operational-review/SKILL.md",
  "docs/AEROVISTA_ADAPTATION.md",
  "docs/USAGE.md",
  "README-AEROVISTA.md"
)

$missing = @()

foreach ($relativePath in $required) {
  $fullPath = Join-Path $repo $relativePath
  if (Test-Path $fullPath -PathType Leaf) {
    Write-Host "OK: $relativePath"
  }
  else {
    Write-Host "MISSING: $relativePath" -ForegroundColor Red
    $missing += $relativePath
  }
}

if ($missing.Count -gt 0) {
  Write-Error "AV-Skillset verification failed. Missing $($missing.Count) required file(s)."
  exit 1
}

Write-Host ""
Write-Host "AV-Skillset verification passed." -ForegroundColor Green
exit 0
