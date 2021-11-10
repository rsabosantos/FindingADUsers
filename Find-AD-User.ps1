import-module activedirectory 
 
function finduser 
{
clear-host 
$username = Read-Host -Prompt 'Enter Name or Last Name '
write-host ""
write-host "User Accounts"
get-aduser -Filter "givenName -eq '$username' -or sn -eq '$username'"  | select-object -Property Name, SamAccountName,  UserPrincipalName | Format-List  

pause 
finduser 
}

finduser 
