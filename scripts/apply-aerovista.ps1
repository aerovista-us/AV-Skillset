param(
  [Parameter(Mandatory=$true)]
  [string]$RepositoryPath
)
$ErrorActionPreference = "Stop"
$repo = Resolve-Path $RepositoryPath
$source = Resolve-Path (Join-Path $PSScriptRoot "..")
if (-not (Test-Path (Join-Path $repo "skills"))) {
  throw "Target does not look like a Superpowers repository: missing skills/"
}
Copy-Item (Join-Path $source "skills\*") (Join-Path $repo "skills") -Recurse -Force
New-Item -ItemType Directory -Path (Join-Path $repo "docs") -Force | Out-Null
Copy-Item (Join-Path $source "docs\AEROVISTA_ADAPTATION.md") (Join-Path $repo "docs\AEROVISTA_ADAPTATION.md") -Force
Copy-Item (Join-Path $source "README-AEROVISTA.md") (Join-Path $repo "README-AEROVISTA.md") -Force
Write-Host "AeroVista adaptation applied. Review with:"
Write-Host "git -C `"$repo`" diff --stat"
Write-Host "git -C `"$repo`" diff"
