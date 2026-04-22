#!/bin/bash
set -euo pipefail

cleanup() {
    local exit_code=$?
    if [[ $exit_code -ne 0 ]]; then
        echo "❌ Script failed with exit code $exit_code" >&2
        echo "🧹 Cleaning up..." >&2
    fi
}

trap cleanup EXIT  

echo "Creating instance..."
aws ec2 run-instances ...    
echo "Done!"
