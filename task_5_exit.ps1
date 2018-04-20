Get-childitem C:\WebServers -Recurse -File | ForEach-Object {
     move-Item -Path ($_.FullName) -Destination C:\task5

    [string]$new_name = $_.directory.Name + "_" + (Get-Date -Format o) + 
    "_" + $_.name -replace (":", "_") -replace ("/", "_") -replace (" ", "_")
    
    Rename-Item -path ("C:\task5\" + $_.Name) -NewName $new_name }  

    Get-ChildItem C:\task5 -Recurse | Measure-Object -Sum -Property length
