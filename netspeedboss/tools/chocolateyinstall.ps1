$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/merchanthasan2/NetSpeedBoss/releases/download/v1.1.1/NetSpeedBoss-1.1.1-Setup.exe'
  softwareName   = 'NetSpeed Boss*'
  checksum64     = '341e7b859b8e00526a4c58b43e83446d2910f771cdca4534cd532f1011ce08af'
  checksumType64 = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
