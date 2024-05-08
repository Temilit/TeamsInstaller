$NewTeams = $null
$OldTeams = $null

$NewTeams = Get-AppxPackage "MSTEAMS" -AllUsers
$OldTeams = Get-AppxPackage "Teams*" -AllUsers



if($OldTeams -ne $null -or $NewTeams -ne $null)
{
Write-Output "Teams client already installed"
exit 0
}else
{
Write-Output "Teams not installed"
exit 1
}
