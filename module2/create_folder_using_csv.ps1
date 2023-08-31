$file = Import-Csv -Path 'D:\powershell\create_folders.csv'

foreach ($folder in $file) {
  New-Item -Path 'D:\powershell\' -Name $folder.Name -ItemType Directory
}