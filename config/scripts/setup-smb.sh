#!/usr/bin/env bash

set -oue pipefail

firewall-cmd --get-active-zones
firewall-cmd --permanent --zone=FedoraWorkstation --add-service=samba
firewall-cmd --reload
