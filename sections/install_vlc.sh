#!/bin/bash

showMessage "Installing VLC..."
runSudo "apt-get install -y vlc"
showMessage "Installing VLC...http-password=12345"
showMessage "Installing VLC...port=7070"

cd $destPath/majordomo-rpi-install

runSudo "cp ./resources/vlcd.service /etc/systemd/system/vlcd.service"
runSudo "systemctl enable vlcd.service"
runSudo "service vlcd start"

# todo logrotate config

showMessage "VLC installed."
