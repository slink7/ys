#!/bin/bash
set -e

if [ -z "$@" ]; then
  echo "Usage: ./deploy.sh minecraft obsidian"
  exit 1
fi

FILES=()

for service in "$@"; do
  FILES+=("-f" "services/${service}.yml")
done

docker compose -f compose.base.yml "${FILES[@]}" up -d
