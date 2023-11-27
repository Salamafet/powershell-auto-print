$printer_name = ""
$monitored_path = "" # Example: "C:\auto-print"

If($args[0] -eq "list")
{
	echo "Printers list:"
	Get-WmiObject Win32_Printer | select Name
	exit
}

If(($printer_name -eq "" ) -or ($monitored_path -eq ""))
{
	echo 'Printer name or folder to watch are not defined'
	echo 'Edit this script and change $printer_name and $monitored_path variable'
	echo ''
	echo 'Launch this script with "list" argument to get the actual available printers'
	echo 'Example: ./auto-print.ps1 list'
	exit
}

echo "Start watching on $($monitored_path)"

Do{
	Get-ChildItem $monitored_path | ForEach-Object {
		Write-Host "Printing $($_.FullName)"
		Get-Content -Path $_.FullName | Out-Printer $printer_name
		Remove-Item -Path $_.FullName
	}
	Start-Sleep 5
}Until(0)