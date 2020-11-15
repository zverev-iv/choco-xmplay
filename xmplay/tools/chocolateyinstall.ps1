$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://support.xmplay.com/files/20/xmplay385.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'xmplay*'
  checksum      = 'b88adcc7f63e885bf4b51c2f51652558c1ee6e00ca7dd39bcee93361009d4eca'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
