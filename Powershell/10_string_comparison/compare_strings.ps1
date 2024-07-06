$str1 = Read-Host "Enter first string"
$str2 = Read-Host "Enter second string"
if ($str1 -eq $str2) {
    Write-Output "Strings are equal."
}
else {
    Write-Output "Strings are not equal."
}