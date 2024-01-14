# Assemble distrobox containers
assemble:
    echo 'Assembling and replacing distroboxes ...'
    # Clear dterm home folder and start with a clean slate
    rm -rf ~/distrobox/dterm
    distrobox assemble create --replace --file /usr/etc/distrobox/distrobox.ini