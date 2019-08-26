$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://support.xmplay.com/files/20/xmplay383.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE_MSI_OR_MSU'
  url           = $url

  softwareName  = 'xmplay*'

  checksum      = '3FF935AB8B4486AB716AFEB9080F0C0C53C5B004F7C1C446860A5D45D465E9C7'
  checksumType  = 'sha256'

  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyZipPackage @packageArgs










    








