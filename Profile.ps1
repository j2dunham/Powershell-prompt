function prompt
{
	 $color = Get-Random -Min 1 -Max 16
	 $identity = [Security.Principal.WindowsIdentity]::GetCurrent()  
	 $branch = (git rev-parse --abbrev-ref HEAD)
     Write-Host ("<-- " + $(Get-Location) +" -->") -ForegroundColor "DarkGreen"
	 if($branch)
	 {
		Write-Host ("~ "+$branch+" ~ ") -ForegroundColor "Red" -NoNewline
	 }
	 
     Write-Host ("[" + $identity.Name +"]: ") -ForegroundColor "DarkCyan" -NoNewline
     return " "
}
