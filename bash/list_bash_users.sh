#!/usr/bin/env bash
PASSWD_FILE="${1:-/etc/passwd}"
if [[ ! -r "$PASSWD_FILE" ]]; then
  echo "Error: cannot read $PASSWD_FILE" >&2
  exit 1
fi
awk -F: '$7 == "/bin/bash" {print $1}' "$PASSWD_FILE"
