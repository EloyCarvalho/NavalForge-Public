#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

fail() {
  printf 'Public-content guard failed: %s\n' "$1" >&2
  exit 1
}

if find . -path './.git' -prune -o -type f \
  \( -iname '*.3dm' -o -iname '*.dwg' -o -iname '*.dxf' -o \
     -iname '*.step' -o -iname '*.stp' -o -iname '*.iges' -o \
     -iname '*.igs' -o -iname '*.stl' -o -iname '*.obj' -o \
     -iname '*.msh' -o -iname '*.foam' -o -iname '*.cas' \) \
  -print -quit | grep -q .; then
  fail 'native engineering or simulation file detected'
fi

if find . -path './.git' -prune -o -type f \
  \( -iname '.env' -o -iname '.env.*' -o -iname '*.pem' -o \
     -iname '*.key' -o -iname '*.p12' -o -iname '*.pfx' \) \
  -print -quit | grep -q .; then
  fail 'credential or environment file detected'
fi

if find . -path './.git' -prune -o -type d \
  \( -iname internal -o -iname private -o -iname customers -o \
     -iname clients -o -iname tenders -o -iname contracts \) \
  -print -quit | grep -q .; then
  fail 'restricted directory name detected'
fi

if grep -RIlE --exclude-dir=.git --exclude=check_public_content.sh \
  -- '-----BEGIN [A-Z ]*PRIVATE KEY-----|github_pat_[A-Za-z0-9_]{20,}|gh[pousr]_[A-Za-z0-9]{20,}|AKIA[0-9A-Z]{16}' \
  . | grep -q .; then
  fail 'credential-like content detected'
fi

# Optional private denylist. Configure NAVALFORGE_BLOCKED_TERMS as newline-separated
# terms in the repository's protected CI secrets. Terms are never printed.
if [[ -n "${NAVALFORGE_BLOCKED_TERMS:-}" ]]; then
  while IFS= read -r term; do
    [[ -z "$term" ]] && continue
    if grep -RIlFi --exclude-dir=.git -- "$term" . | grep -q .; then
      fail 'protected confidential term detected'
    fi
  done <<< "$NAVALFORGE_BLOCKED_TERMS"
fi

printf 'Public-content guard passed.\n'
