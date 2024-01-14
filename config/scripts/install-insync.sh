#!/usr/bin/env bash

set -oue pipefail

rpm-ostree install https://cdn.insynchq.com/builds/linux/insync-3.8.7.50516-fc39.x86_64.rpm
rpm-ostree install https://cdn.insynchq.com/builds/linux/insync-nautilus-3.8.2.50468-1.noarch.rpm