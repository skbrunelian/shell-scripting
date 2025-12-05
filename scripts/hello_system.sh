#!/usr/bin/env bash
# Purpose: Friendly system greeting with uptime
# Usage: ./hello_system.sh
# Author: Shahid Khattak

# --- Safety ---
set -euo pipefail
IFS=$'\n\t'
# --- Script ---
username="$(whoami)"
now="$(date '+%F %T %Z')"
host="$(hostname)"
uptime_str="$(uptime -p 2>/dev/null || true)"  # works on most Linux; harmless if missing

printf "Hello, %s!\n" "$username"
printf "Date: %s\n" "$now"
printf "Host: %s\n" "$host"
if [[ -n "${uptime_str:-}" ]]; then
  printf "Uptime: %s\n" "$uptime_str"
fi


