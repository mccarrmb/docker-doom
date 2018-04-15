# This is needed to keep PoSh from displaying that ugly red error
$CurrentPreference = $ErrorActionPreference
$ErrorActionPreference = 'stop'

try 
{ 
    if(Get-Command docker)
    {
        if($args.Length -gt 0) { docker build . -t $args[0] }
        else { docker build . -t docker-doom }
    } 
}
catch{"You have to install docker before you can build the container."}
Finally {$ErrorActionPreference=$CurrentPreference}
