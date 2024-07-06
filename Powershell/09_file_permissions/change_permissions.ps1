$file = Read-Host "Enter the file name"
icacls $file /grant "Everyone:(F)"
Write-Output "Permissions changed."