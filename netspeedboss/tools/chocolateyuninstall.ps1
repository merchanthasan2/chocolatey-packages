$ErrorActionPreference = 'Stop'

$packageName = $env:ChocolateyPackageName
$softwareName = 'NetSpeed Boss*'

[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName

if ($key.Count -eq 1) {
  $key | ForEach-Object {
    $file = "$($_.UninstallString)".Trim('"')
    $packageArgs = @{
      packageName    = $packageName
      fileType       = 'exe'
      silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
      validExitCodes = @(0)
      file           = $file
    }
    Uninstall-ChocolateyPackage @packageArgs
  }
} elseif ($key.Count -eq 0) {
  Write-Warning "$packageName has already been uninstalled by other means."
} elseif ($key.Count -gt 1) {
  Write-Warning "$($key.Count) matches found for $softwareName!"
  Write-Warning "To prevent accidental data loss, no programs will be uninstalled."
}
