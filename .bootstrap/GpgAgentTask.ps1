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

$A = New-ScheduledTaskAction -Execute "$(scoop which gpgconf) --launch gpg-agent"
$T = New-ScheduledTaskTrigger -AtLogon -User "$(whoami)"
$P = New-ScheduledTaskPrincipal -UserId "$(whoami)" -LogonType Interactive 
$S = New-ScheduledTaskSettingsSet
$D = New-ScheduledTask -Action $A -Trigger $T -Principal $P -Settings $S
Register-ScheduledTask "Gpg-Agent" -InputObject $D
