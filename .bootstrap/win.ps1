$isDesktop = ($PSVersionTable).PSEdition -eq "Desktop"

if (!$isDesktop -and !$isWindows) {
        Write-Warning "This script is targeted on Windows machines only."
        Break
}

$isAdmin = [Security.Principal.WindowsIdentity]::GetCurrent().Groups -contains 'S-1-5-32-544'

if (!$isAdmin) {
        Write-Warning "We need admin rights to run this script."
        Break
}

$reg = 'Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout\'
$name = 'Scancode Mapi'
$val = @(
        0,   0,   0,   0,
        0,   0,   0,   0,
        5,   0,   0,   0,     # 5 entries (incl. null entry)
        56,  0,   91,  224,   # left  win  -> left  alt
        91,  224, 56,  0,     # left  alt  -> left  win
        56,  224, 29,  224,   # right ctrl -> right alt
        29,  224, 56,  224,   # right alt  -> right ctrl
        0,   0,   0,   0      # null entry
)

New-ItemProperty -Path $reg -Name $name -PropertyType Binary -Value $val
Write-Output "Restart for the changes to take effect"

