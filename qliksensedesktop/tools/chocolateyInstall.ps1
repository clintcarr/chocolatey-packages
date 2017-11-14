$ErrorActionPReference = 'Stop'

$packageArgs    = @{
    packageName     = 'QlikSenseDesktop'
    fileType        = 'EXE'
    url64bit        = 'https://da3hntz84uekx.cloudfront.net/QlikSenseDesktop/11.24/0/_MSI/Qlik_Sense_Desktop_setup.exe'
    silentArgs      = '-s'
    validExitCodes  = @(0)
    softwareName    = 'Qlik Sense Desktop'
}

Install-ChocolateyPackage @packageArgs
