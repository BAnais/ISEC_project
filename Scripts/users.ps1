$filepath = "c:\Scripts\users.csv" 
$users = Import-CSV $filepath -delimiter "," 

Foreach ($user in $users) {
     write-host $user.Name $user.Surname
     New-ADUser -Title $user.Title -Name $user.Name -Surname $user.Surname -EmailAddress $user.EmailAddress -OfficePhone $user.OfficePhone -MobilePhone $user.MobilePhone -HomePhone $user.HomePhone -Office $user.Office -Department $user.Department -Division $user.Division -City $user.City -State $user.State -Country $user.Country -Company $user.Company -Organization $user.Organization 
}

