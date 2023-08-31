$files = Get-Content -Path 'D:\powershell\create_users.txt'

foreach ($file in $files) {
  New-Item -Path 'D:\powershell\' -Name $file -ItemType Directory
}