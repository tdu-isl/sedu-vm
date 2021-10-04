#!/bin/bash
vagrant up

vagrant reload


main () {
    echo "Welcome to sedu-vm."
    echo
    echo "1: Malware Analysis"
    echo "2: Security Assessment"
    echo "3: Platform Scan"
    echo -n "Please select a vm to create by choosing 1, 2 or 3: "

    read user_input

    case $user_input in
        1)
            malanalysis
            ;;
        2)
            secAssessment
            ;;
        3)
            platform_scan
            ;;
        *)
            echo "Unrecognised option '$user_input'. Exiting..."
            exit 1
            ;;
    esac
}

malanalysis () {
    vagrant ssh -- -t 'cd vagrant_shared/malware_analysis; bash sandbox_install.sh; cd ..; bash static_install.sh'
}

secAssessment () {
    vagrant ssh -- -t 'cd vagrant_shared/security_assessment; bash install.sh'
}

platform_scan () {
    vagrant ssh -- -t "cd vagrant_shared/platform_scan; chmod 777 allrun.sh; bash allrun.sh"
}

main "$@"