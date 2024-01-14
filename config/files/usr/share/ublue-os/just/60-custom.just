# Assemble distrobox containers
assemble:
    echo 'Assembling and replacing distroboxes ...'
    rm -rf ~/distrobox
    distrobox assemble create --replace --file /usr/etc/distrobox/distrobox.ini