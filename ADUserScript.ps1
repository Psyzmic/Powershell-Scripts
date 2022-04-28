
$username = Read-Host "What is the Username?" 

function Show-Menu {
    param (
        [string]$Title = 'Domain'
    )
    Clear-Host
    Write-Host "================ Domain ================"
    Write-Host " "
    Write-Host "1: Press '1' for <domain 1>"
    Write-Host "2: Press '2' for <domain 2>"
    Write-Host "3: Press '3' for <domain 3>"
    Write-Host "4: Press '4' for <domain 4>"
    Write-Host "Q: Press 'Q' to quit."
    Write-Host " "
}


do
 {
    Show-Menu
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
        '1' {
        Get-ADUser -server <domain 1> -identity $username -properties * | select Name, DisplayName, title, DistinguishedName, Department, Company, l, Manager, telephoneNumber, ipPhone, mobilePhone, b, EmailAddress, PrimaryGroup, Enabled, AccountExpirationDate, PasswordLastSet, PasswordExpired 
        } '2' {
        Get-ADUser -server <domain 2> -identity $username -properties * | select Name, DisplayName, title, DistinguishedName, Department, Company, l, Manager, telephoneNumber, ipPhone, mobilePhone, b, EmailAddress, PrimaryGroup, Enabled, AccountExpirationDate, PasswordLastSet, PasswordExpired 
        } '3' {
          Get-ADUser -server <domain3> -identity $username -properties * | select Name, DisplayName, title, DistinguishedName, Department, Company, l, Manager, telephoneNumber, ipPhone, mobilePhone, b, EmailAddress, PrimaryGroup , Enabled, AccountExpirationDate, PasswordLastSet, PasswordExpired
        }'4' {
          Get-ADUser -server <domain4> -identity $username -properties * | select Name, DisplayName, title, DistinguishedName, Department, Company, l, Manager, telephoneNumber, ipPhone, mobilePhone, b, EmailAddress, PrimaryGroup, Enabled, AccountExpirationDate, PasswordLastSet, PasswordExpired
        }'Q' {
          exit
        }
    }
    pause
 }
 until ($selection -eq 'q')