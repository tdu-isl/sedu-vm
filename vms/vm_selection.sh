#!/bin/bash

main () {
    echo "Welcome to sedu-vm."
    echo
    echo "1: Malware Analysis"
    echo "2: Security Assessment"
    echo -n "Please select a vm to create by choosing 1 or 2: "

    read user_input

    case $user_input in
        1)
            malanalysis
            ;;
        2)
            secAssessment
            ;;
        *)
            echo "Unrecognised option '$user_input'. Exiting..."
            exit 1
            ;;
    esac
}

malanalysis () {
    sh /home/vagrant/vagrant_shared/vms/malware_analysis/install.sh
}

secAssessment () {
    echo "Security Assessment"
}

main "$@"