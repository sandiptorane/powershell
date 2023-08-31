$UsersToImport = Import-Csv -Path 'D:\powershell\users2.csv'

foreach($Item in $UsersToImport)
{
    
    $SecurePassWord = ConvertTo-SecureString -String $item.PASSWORD -AsPlainText -Force

    if($item.DEPARTMENT -eq 'EvilWizards')
    {
            
         'This user ' + $Item.NAME + ' cannot be created because the department is ' +$Item.DEPARTMENT
         'Do you want to create this user ? (Y/N)'
        
        $CreateOrNot = Read-Host 

        if($CreateOrNot -eq 'Y')
        {
            
            $UserToCreate = New-LocalUser -Name $Item.LOGINNAME -Password $SecurePassWord -Description $Item.DEPARTMENT

        }

        else
        {
            
            'OK we will not create '+ $Item.NAME
            
        }
    }

    else
    {
        
          $UserToCreate = New-LocalUser -Name $Item.LOGINNAME -Password $SecurePassWord -Description $Item.DEPARTMENT
    
    
    }

}