$pohiKaust = ".\PS_Demo\"

$failideList = Get-ChildItem -Path $pohiKaust -Recurse | Out-File -FilePath $pohiKaust + "FailideIndeks.txt"