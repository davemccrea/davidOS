import '100-bling.just'

# Assemble distrobox containers
assemble:
    echo 'Assembling and replacing distroboxes ...'
    sudo rm -rf ~/distrobox
    distrobox assemble create --replace --file /etc/distrobox/distrobox.ini