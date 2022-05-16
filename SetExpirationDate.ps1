#process account expiration requests for a defined user

$user = Read-Host "What is the username?"
$date = Read-Host "What is the expiration date? (Day/Month/Year 00:00:00)"
$domain = Read-Host "What is the domain?"


Set-AdUser -server $domain -Identity $user -Accountexpirationdate $date
Get-ADUser -identity $user -server $domain -properties * |select AccountExpirationDate