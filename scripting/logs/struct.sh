#!/bin/bash

set -euo pipefail

LOG_LEVEL="${LOG_LEVEL:-INFO}"

log() {

	local level="$1"
	local message="$2"
	local timestamp
	timestamp=$(date '+%Y-%m-%d %H:%M:%S')

	echo " [$timestamp] [$level] $message "
}

log_info()    { log "INFO " "$1"; }
log_success() { log "OK   " "$1"; }
log_warn()    { log "WARN " "$1" >&2; }
log_error()   { log "ERROR" "$1" >&2; }
log_debug()   {

	[[ "$LOG_LEVEL" == "DEBUG" ]] && log "DEBUG" "$1" || true
}


log_info    "Starting EC2 instance creation"
log_debug   "AMI_ID=$AMI_ID INSTANCE_TYPE=$INSTANCE_TYPE"
log_warn    "No key pair specified — instance won't be SSH-able"
log_error   "Failed to create instance"
log_success "Instance i-0abc123 is running"
