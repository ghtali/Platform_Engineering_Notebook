function Greet {
    param (
        [string]$name
    )
    Write-Output "Hello, $name!"
}
Greet -name "Alice"