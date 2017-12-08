function Disable-AutoRun
{
    $item = Get-Item `
        "REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\IniFileMapping\AutoRun.inf" `   # for all files named autorun
        -ErrorAction SilentlyContinue
    if (-not $item) {                             # if the key doesn't exist...
        $item = New-Item "REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\IniFileMapping\AutoRun.inf"     #  ...add it to the registry
    }
    Set-ItemProperty $item.PSPath "(default)" "@SYS:DoesNotExist" # and set that whenever the system encounters this file, thread it as one that doesn't exist
}