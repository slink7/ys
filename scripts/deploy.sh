#!/bin/bash
set -e

STACK_FILES=("$@")

if [ ${#STACK_FILES[@]} -eq 0 ]; then
  echo "Usage: ./deploy.sh services/minecraft.yml services/obsidian.yml"
  exit 1
fi

docker compose -f compose.base.yml "${STACK_FILES[@]}" up -d

