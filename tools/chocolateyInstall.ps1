$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyShortcut -ShortcutFilePath (Join-Path (Join-Path $Env:ChocolateyInstall 'bin') 'hide.lnk') -TargetPath (Join-Path (Join-Path $toolsDir 'bin') 'hide.bat')
Install-ChocolateyShortcut -ShortcutFilePath (Join-Path (Join-Path $Env:ChocolateyInstall 'bin') 'show.lnk') -TargetPath (Join-Path (Join-Path $toolsDir 'bin') 'show.bat')
