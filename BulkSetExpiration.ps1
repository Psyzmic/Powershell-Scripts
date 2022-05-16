#bulk process account expiration requests from a csv file

#define usercsv folder path before proceeding

$userscsv = @('C:\users\ccatucci\users.csv') 
$users = Import-Csv -Path "$userscsv" -Encoding UTF8
$date = Read-Host "What is the expiration date? (Day/Month/Year 00:00:00)"
$domain = Read-Host "What is the domain?"

foreach ($user in $users) {
    Set-AdUser -server $domain -Identity $user -Accountexpirationdate $date
}