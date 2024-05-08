<##Teams, start app on first login
#
# This script is designed to run in user context at login
# It will check the local cache for teams app in the user profile to determine if teams was launched previously   
# If not launched previously launch it in user context
#
#
# cmd /c start /min ""
#
# cscript /nologo
#>

if($env:USERNAME -like "DM*")
{
##Dmuser detected, ABORT ABORT!
exit 0
}

##get path to check

$CurrentUserTeamsPath = (Get-ChildItem -Path "$env:USERPROFILE\AppData\Local\Packages\" | Where-Object {$_.name -like "*teams*"}).FullName

[int]$teamscache = (ls -Path $CurrentUserTeamsPath -ErrorAction Ignore).count


if($teamscache -gt "0" -and $CurrentUserTeamsPath -ne $null)
{
###Cache not empty, teams seems to have started before, will not start
}else
{
##Teamscache empty or non-existant, assume first login, will launch teams
$teamsinstalllocaton = (Get-AppxPackage "MSteams" | select -ExpandProperty InstallLocation)
$teamsexepath = (Get-ChildItem -Path $teamsinstalllocaton  | Where-Object {$_ -like "ms-teams.exe"} |select -ExpandProperty FullName)
Start-Process -FilePath "$teamsexepath"

}
