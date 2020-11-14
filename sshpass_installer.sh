#!/usr/bin/env bash

help(){
    echo "
    Script for installing sshpass util to linux or Mac machine:
    =========================================================================================================================================
    Usage examples: 'bash sshpass_install.sh --mac'                                        - installs sshpass to Mac machine
                    'bash sshpass_install.sh --linux'                                      - installs sshpass to Linux machine
    =========================================================================================================================================
    Possible arguments:
    -h, --help                          - Print help
    --mac                               - Installs Xcode and sshpass to Mac machine
    --linux                             - Installs sshpass to Linux machine"
}

install_on_mac(){
    xcode-select --install
    brew install hudochenkov/sshpass/sshpass
}

install_on_linux(){
    sudo apt-get install sshpass
}

while [[ ! $# -eq 0 ]]
do
    case "$1" in
        -h)
            help
            exit
            ;;
        --help)
            help
            exit
            ;;
        --mac)
            install_on_mac
            exit
            ;;
        --linux)
            install_on_linux
            exit
            ;;
    esac
    shift
done
