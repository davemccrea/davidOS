#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

rpm-ostree install https://cdn.insynchq.com/builds/linux/insync-3.8.7.50516-fc39.x86_64.rpm
rpm-ostree install https://cdn.insynchq.com/builds/linux/insync-nautilus-3.8.2.50468-1.noarch.rpm