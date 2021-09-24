function Show-Menu
{
    param (
        [string]$Title = "Please select a vm to create by choosing 1 or 2: "
    )
    Clear-Host
    Write-Host "TItle"
    Write-Host "1: Malware Analysis"
    Write-Host "2: Security Assessment"

}

Function Malware_analysis {
    # vagrant ssh -- -t 'cd vagrant_shared/malware_analysis; bash sandbox_install.sh; cd ..; bash static_install.sh'
    Write-Host "malware analysis"
}

Function Security_Assessment {
    # vagrant ssh -- -t 'cd vagrant_shared/security_assessment; bash install.sh'
    Write-Host "security assessment"

}

do {
    Show-Menu
    $user_input = Read-Host "Please make a selection"
    Clear-Host
    switch ($user_input) {
        '1' {Malware_analysis; break}
        '2' {Security_Assessment; break}
        'q' {break}
        default{
            Write-Host "You entered '$user_input'" -ForegroundColor Red
            Write-Host "Please select one of the choices from the menu." -ForegroundColor Red
        }
        }
        Pause
} until ($user_input -eq 'q')