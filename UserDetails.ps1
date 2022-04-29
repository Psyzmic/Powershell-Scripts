#This script searches all specified domains for the specified username and returns useful user properties.


$username = Read-Host "What is the Username?" 

     $ErrorActionPreference = ‘SilentlyContinue’

        Get-ADUser -server <domain 1> -identity $username -properties * | select Name, DisplayName, title, DistinguishedName, Department, Company, l, Manager, telephoneNumber, ipPhone, mobilePhone, b, EmailAddress, PrimaryGroup, Enabled, AccountExpirationDate, PasswordLastSet, PasswordExpired -erroraction silentlycontinue

        Get-ADUser -server <domain 2> -identity $username -properties * | select Name, DisplayName, title, DistinguishedName, Department, Company, l, Manager, telephoneNumber, ipPhone, mobilePhone, b, EmailAddress, PrimaryGroup, Enabled, AccountExpirationDate, PasswordLastSet, PasswordExpired Err -erroraction silentlycontinue
    
        Get-ADUser -server <domain 3> -identity $username -properties * | select Name, DisplayName, title, DistinguishedName, Department, Company, l, Manager, telephoneNumber, ipPhone, mobilePhone, b, EmailAddress, PrimaryGroup , Enabled, AccountExpirationDate, PasswordLastSet, PasswordExpired -erroraction silentlycontinue
 
        Get-ADUser -server <domain 4> -identity $username -properties * | select Name, DisplayName, title, DistinguishedName, Department, Company, l, Manager, telephoneNumber, ipPhone, mobilePhone, b, EmailAddress, PrimaryGroup, Enabled, AccountExpirationDate, PasswordLastSet, PasswordExpired -erroraction silentlycontinue
        
        

