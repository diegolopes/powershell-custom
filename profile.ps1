$foregroundColor = 'white'
$time = Get-Date
$psVersion= $host.Version.Major
$curUser= (Get-ChildItem Env:\USERNAME).Value
$curComp= (Get-ChildItem Env:\COMPUTERNAME).Value

function Prompt {

$curtime = Get-Date

Write-Host -NoNewLine "$curUser " -foregroundColor Green

Write-Host -NoNewLine "in " -foregroundColor White
Write-Host -NoNewLine "$((Get-Location).Path)" -foregroundColor Cyan `n
Write-Host -NoNewLine "$"


$host.UI.RawUI.WindowTitle = "PowerShell: ($curComp)"

Return " "

}
