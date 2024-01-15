#!/usr/bin/env bash

set -oue pipefail

# https://github.com/ublue-os/bluefin/blob/main/Containerfile#L20C1-L34C9
if [ ${FEDORA_MAJOR_VERSION} -ge "39" ]; then \
    wget https://copr.fedorainfracloud.org/coprs/kylegospo/gnome-vrr/repo/fedora-"${FEDORA_MAJOR_VERSION}"/kylegospo-gnome-vrr-fedora-"${FEDORA_MAJOR_VERSION}".repo -O /etc/yum.repos.d/_copr_kylegospo-gnome-vrr.repo && \
    rpm-ostree override replace --experimental --from repo=copr:copr.fedorainfracloud.org:kylegospo:gnome-vrr mutter mutter-common gnome-control-center gnome-control-center-filesystem && \
    rm -f /etc/yum.repos.d/_copr_kylegospo-gnome-vrr.repo && \
    wget https://copr.fedorainfracloud.org/coprs/kylegospo/prompt/repo/fedora-$(rpm -E %fedora)/kylegospo-prompt-fedora-$(rpm -E %fedora).repo?arch=x86_64 -O /etc/yum.repos.d/_copr_kylegospo-prompt.repo && \
    rpm-ostree override replace \
    --experimental \
    --from repo=copr:copr.fedorainfracloud.org:kylegospo:prompt \
        vte291 \
        vte-profile && \
    rpm-ostree install \
        prompt && \
    rm -f /etc/yum.repos.d/_copr_kylegospo-prompt.repo \
; fi