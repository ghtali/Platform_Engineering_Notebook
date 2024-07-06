$file = Read-Host "Enter the file name"
if (Test-Path $file) {
    Write-Output "File exists."
} else {
    Write-Output "File does not exist."
}
