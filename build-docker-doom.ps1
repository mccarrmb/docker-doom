# This is needed to keep PoSh from displaying that ugly red error
$CurrentPreference = $ErrorActionPreference
$ErrorActionPreference = 'stop'

$image_tag = "docker-doom"

# Set a custom tag name if desired
if ($args.Length -gt 0) { $image_tag = args[0] } 

# Remove the previously used Dockerfile in case the linux build was executed
if (Test-Path .\Dockerfile) { Remove-Item .\Dockerfile }

# Allows Docker to build a windows-based container
Copy-Item ".\windows\Dockerfile" ".\"

try { 
    if (Get-Command docker) {
        docker build . -t "$image_tag"
    } 
}
catch { "You have to install docker before you can build the container." }
Finally { $ErrorActionPreference = $CurrentPreference }
