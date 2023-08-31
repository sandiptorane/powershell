$UsersToImport = Import-Csv -Path 'D:\powershell\users2.csv'

foreach($Item in $UsersToImport)
{
    
    $SecurePassWord = ConvertTo-SecureString -String $item.PASSWORD -AsPlainText -Force

    if($item.DEPARTMENT -eq 'EvilWizards')
    {
            
        'This user ' + $Item.NAME + ' cannot be created because the department is ' +$Item.DEPARTMENT
    
    }

    else
    {
        
        New-LocalUser -Name $Item.LOGINNAME -Password $SecurePassWord -Description $Item.DEPARTMENT
    
    
    }
}