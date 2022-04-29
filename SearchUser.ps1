#this script will search all specified domains to find the name of the user specified. You can use first and/or last name.

$name = Read-Host "What is the user's name?" 

    $ErrorActionPreference = ‘SilentlyContinue’

        Get-ADUser -server <domain 1> -Filter "name -like '*$name*'" | select Name, sAMAccountName, DistinguishedName
        Get-ADUser -server <domain 2> -Filter "name -like '*$name*'" | select Name, sAMAccountName, DistinguishedName
        Get-ADUser -server <domain 3> -Filter "name -like '*$name*'" | select Name, sAMAccountName, DistinguishedName
        Get-ADUser -server <domain 4> -Filter "name -like '*$name*'" | select Name, sAMAccountName, DistinguishedName