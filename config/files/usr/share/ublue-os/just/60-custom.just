# Assemble distrobox containers
assemble:
    echo 'Assembling and replacing distroboxes ...'
    rm -rf ~/distrobox
    distrobox assemble create --replace --file /etc/distrobox/distrobox.ini