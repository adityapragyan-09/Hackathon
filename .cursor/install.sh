#!/usr/bin/env bash
set -euo pipefail

cd /workspace

required_files=(README.md team.txt aditya.txt)
for f in "${required_files[@]}"; do
  if [[ ! -f "$f" ]]; then
    echo "Missing required file: $f" >&2
    exit 1
  fi
done

git rev-parse --is-inside-work-tree >/dev/null
git --version

echo "Hackathon practice repository verified ($(wc -l < team.txt) team lines)."
