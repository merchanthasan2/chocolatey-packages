$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/merchanthasan2/NetSpeedBoss/releases/download/v1.4.0/NetSpeedBoss-1.4.0-Setup.exe'
  softwareName   = 'NetSpeed Boss*'
  checksum64     = '2ff4b7f16ce35a2be558186ec500aa397f390e9ebe0c2054a2aa31b63cf4b0b3'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
