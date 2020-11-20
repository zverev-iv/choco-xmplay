
$ErrorActionPreference = 'Stop';

$meta = Get-Content -Path "$($env:ChocolateyPackageFolder)\tools\packageArgs.csv" -Raw
$packageArgs = @{}
(ConvertFrom-Csv $meta -Delimiter ';').psobject.properties | ForEach-Object { $packageArgs[$_.Name] = $_.Value }

$packageArgs["packageName"] = "$($env:ChocolateyPackageName)"
$packageArgs["fileFullPath"] = "$(Join-Path (Split-Path -parent $MyInvocation.MyCommand.Definition) $filename)"

Install-ChocolateyZipPackage @packageArgs