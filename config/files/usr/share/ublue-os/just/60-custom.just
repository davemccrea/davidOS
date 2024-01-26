update-dterm:
    distrobox stop dterm
    distrobox rm dterm
    rm -rf ~/distrobox/dterm
    podman pull ghcr.io/davemccrea/dterm
    distrobox create --image ghcr.io/davemccrea/dterm:latest --name dterm --home ~/distrobox/dterm
