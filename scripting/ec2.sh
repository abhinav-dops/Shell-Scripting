#!/bin/bash

set -euo pipefail

check_awscli() {
	if ! command -v aws &> /dev/null; then
		echo "Aws CLI not installed. Please install it first." >&2
		exit 1
	fi
}


install_awscli() {
	echo "installing aws cli v2 on linux..."
	curl -s "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

	sudo apt-get install-y unzip &> /dev/null
	unzip -q awscliv2.zip
	sudo ./aws/install

	aws --version
	rm -rf awscliv2.zip ./aws

}
