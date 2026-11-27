$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/merchanthasan2/NetSpeedBoss/releases/download/v1.3.1/NetSpeedBoss-1.3.1-Setup.exe'
  softwareName   = 'NetSpeed Boss*'
  checksum64     = '00f24b99d665e21d4ffbc6bd5f180f4858c7e3a9a6b416726c3290fa8cb809b3'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
