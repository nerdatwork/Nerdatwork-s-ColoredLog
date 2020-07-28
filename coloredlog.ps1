#NerdAtWork's Coloredlog

function Get-LogColor {
    Param([Parameter(Position=0)]
         [String]$LogEntry)

    process {
        if ($LogEntry.Contains("downloaded")) {Return "Green"}
        elseif ($LogEntry.Contains("uploaded")) {Return "Yellow"}
        elseif ($LogEntry.Contains("failed") -or $LogEntry.Contains("error") -or $LogEntry.Contains("ERROR")) {Return "Red"}
        elseif ($LogEntry.Contains("deleted")) {Return "Magenta"}
        elseif ($LogEntry.Contains("canceled")) {Return "Cyan"}
        else {Return "White"}
    }
}

Write-Host "`n`n	+++++++++++++++++++++++++++++++++++++++++" -ForegroundColor Magenta
Write-Host "	+" -f Magenta -NoNewline; Write-Host "`t      NerdAtWork's ColoredLog" -f Gray -NoNewline; Write-Host "`t`t+" -ForegroundColor Magenta
Write-Host "	+++++++++++++++++++++++++++++++++++++++++`n" -ForegroundColor Magenta

 
Write-Host "1. Use live log (not redirected to file) `n2. Use log file (log redirected to file)" -ForegroundColor DarkYellow

$choice = Read-Host -Prompt "`tEnter your option" 
switch($choice){
   1 {$containername = Read-Host -Prompt "Enter container name (ex:storagenode, storagenode1)"            
            if(docker container inspect -f '{{.State.Running}}' $containername)
            { 
                do{
                    docker logs -f $containername 2>&1 | ForEach {Write-Host -ForegroundColor(Get-LogColor $_) $_}
                  }while($choice=1)
            }            
      }
   2 {$pathtolog = Read-Host -Prompt "Enter path to log file with filename"
        if(Test-Path -Path $pathtolog -PathType Leaf){          
            do{
               get-content $pathtolog -tail 0 -wait | ForEach {Write-host -ForegroundColor(Get-LogColor $_) $_} 
              }while($choice=2)          
        }
        else{
        Write-Host -ForegroundColor DarkRed "`n`t`tERROR: Incorrect path to log file.`n"        
        }
     }
}
