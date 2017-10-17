 function prompt {
     $color = Get-Random -Min 1 -Max 16
     Write-Host ("PS " + $(Get-Location))  -ForegroundColor $color
     "--> "
 }