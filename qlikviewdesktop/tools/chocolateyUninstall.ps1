$ErrorActionPreference = 'Stop';

$packageName = 'QlikView Desktop'

$uninstalled = $false

[array]$key = Get-UninstallRegistryKey -SoftwareName 'QlikView Desktop*'

if ($key.Count -eq 1) {
    $key | % {
        $packageArgs = @{
            packageName     = $packageName
            fileType        = 'EXE'
            silentArgs      = '-s -uninstall'
            validExitCodes  = @(0)
            file        = "$($_.UninstallString.Trim('"'))"
        }
        Uninstall-ChocolateyPackage @packageArgs

    }
}