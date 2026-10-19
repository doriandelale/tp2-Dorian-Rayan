$Destination = "\\NAS01\Backup"
Start-Transcript -Path journal.txt
Stop-Transcript
$Jours = 30
$Compression = "Optimal"$Jours = 30
Get-ChildItem $Destination | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-$Jours) } | Remove-Item -WhatIf
