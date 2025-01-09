$OutputEncoding = [System.Text.Encoding]::UTF8

if (-not $global:WelcomeShown) {
    Write-Host "FUN TIME ENABLED!" -ForegroundColor Green
    $global:WelcomeShown = $true
}

function prompt{
    $time = (Get-Date).ToString('yyyy-MM-dd HH:mm:ss')
    $timeZone = (Get-TimeZone).Id
        switch ($timeZone) {
            "Pacific Standard Time" { $tzAbbr = "PST" }
            "Eastern Standard Time" { $tzAbbr = "EST" }
            "Central Standard Time" { $tzAbbr = "CST" }
            "Mountain Standard Time" { $tzAbbr = "MST" }
            "Coordinated Universal Time" { $tzAbbr = "UTC" }
        default { $tzAbbr = $timeZone }
}
    $pwd = Get-Location

    Write-Host "|--[$time $tzAbbr]" -ForegroundColor Yellow
    Write-Host "|--[$pwd]" -ForegroundColor Cyan

    return "|-->>"
}
