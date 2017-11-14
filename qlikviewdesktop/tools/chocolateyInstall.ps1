$ErrorActionPReference = 'Stop'

$packageArgs    = @{
    packageName     = 'QlikViewDesktop'
    fileType        = 'EXE'
    url64bit        = 'https://da3hntz84uekx.cloudfront.net/qlikview/12.20/122020100/_MSI/QlikViewDesktop_x64Setup.exe'
    silentArgs      = '/S /v/qn'
    validExitCodes  = @(0)
    softwareName    = 'QlikView Desktop'
}

Install-ChocolateyPackage @packageArgs
