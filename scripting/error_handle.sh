#!/bin/bash
set -euo pipefail

error() {
    echo "❌ ERROR: $1" >&2
    exit "${2:-1}"    # use second arg as exit code, default to 1
}

info()    { echo "ℹ️  $1"; }
success() { echo "✅ $1"; }
warning() { echo "⚠️  $1" >&2; }

AMI_ID="${1:-}"

if [[ -z "$AMI_ID" ]]; then
    error "AMI ID is required" 2      # exits with code 2
fi

if [[ ! "$AMI_ID" =~ ^ami- ]]; then
    error "Invalid AMI ID format: $AMI_ID"   # exits with code 1
fi

info    "Starting instance creation..."
success "Instance created successfully!"
warning "Remember to check your AWS billing"
