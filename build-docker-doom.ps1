param(
    [string]
    # Specifies the running container name
    $Name = 'docker-doom',

    [string]
    # Specifies the container host OS (linux, windows, or windows-server)
    $HostOs = 'linux'
)

<#
        .SYNOPSIS
        Creates a Doom multiplayer server container

        .DESCRIPTION
        Creates a Doom multiplayer server container for either Linux, Windows,
        or Windows Server based hosts.
#>

# This is needed to keep PoSh from displaying that ugly red error
$CurrentPreference = $ErrorActionPreference
$ErrorActionPreference = 'stop'

$SupportedOs = 'linux','windows','windows-server'

# Remove the previously used Dockerfile in case the linux build was executed
if (Test-Path .\Dockerfile) { Remove-Item .\Dockerfile }

if ($SupportedOs.Contains($HostOs)) {
    Copy-Item ".\$HostOs\Dockerfile" ".\"
}
else {
    Write-Error "The -HostOs `"$HostOs`" is not supported"
    Exit
}

try { 
    if (Get-Command docker) {
        docker build . -t "$Name"
    } 
}
catch { "You have to install docker before you can build the container." }
Finally { $ErrorActionPreference = $CurrentPreference }
