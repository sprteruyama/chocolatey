$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.woodybells.com/softs/jt153c.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'Jtrim*'
  checksum      = '0a849084f9b8df0fe49cb13fa71e8badc12a8174fe373e4111dc9bb9f84b438d'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs