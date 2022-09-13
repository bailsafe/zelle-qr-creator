Write-Host "Zelle" -BackgroundColor Magenta -NoNewline
Write-Host " QR Code Creator"

$creator = {
    Write-Host "`n" -NoNewline
    $name = Read-Host -Prompt "Enter the name"
    $token = Read-Host -Prompt "Enter token (registered email/phone number)"
    $json = [System.String]::Concat('{"name":"',$name,'","token":"',$token,'"}')
    $urldata = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($json))
    $url = "https://enroll.zellepay.com/qr-codes?data="+$urldata
    Write-Host "URL becomes"$url
    Write-Host "Please confirm the URL!" -ForegroundColor Black -BackgroundColor Yellow
    $confirmation = Read-Host "Y to continue, N to start over, Q to quit"
    if ($confirmation -eq 'y') {
        Write-Host "Opening QR code as SVG..."
        Start-Sleep -Seconds 2
        Start-Process "https://api.qrserver.com/v1/create-qr-code/?data=$url&format=svg&qzone=4"
    } elseif ($confirmation -eq 'n') {
        &$creator
    } elseif ($confirmation -eq 'q') {
        break
    }
}

&$creator