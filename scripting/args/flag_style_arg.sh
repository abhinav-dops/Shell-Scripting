#!/bin/bash
set -euo pipefail

AMI_ID=""
INSTANCE_TYPE="t2.micro"  

# parse flags
while [[ $# -gt 0 ]]; do
    case "$1" in
        --ami-id)
            AMI_ID="$2"
            shift 2          
            ;;
        --instance-type)
            INSTANCE_TYPE="$2"
            shift 2
            ;;
        --help|-h)
            usage
            ;;
        *)
            echo "❌ Unknown flag: $1"
            usage
            ;;
    esac
done

# validate after parsing
if [[ -z "$AMI_ID" ]]; then
    echo "❌ --ami-id is required"
    usage
fi

echo " AMI: $AMI_ID | Type: $INSTANCE_TYPE"
