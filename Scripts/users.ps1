$filepath = "c:\Scripts\users.csv" 
$users = Import-CSV $filepath -delimiter "," 

Foreach ($user in $users) {
     write-host $user.Name $user.Surname
     $username=$user.name
     $exists=get-ADUser -Filter "Name -eq '$username'"
     if($exists -eq $null){
        New-ADUser -Name $user.Name -Surname $user.Surname -EmailAddress $user.EmailAddress -OfficePhone $user.OfficePhone -MobilePhone $user.MobilePhone -HomePhone $user.HomePhone
        }
}

