$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://support.xmplay.com/files/20/xmplay384.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'xmplay*'
  checksum      = 'a3e19ec6426724667345c6e5666bd63c79abd66cc0154a6bce683b1612c574ae'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
