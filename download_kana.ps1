$hiragana = 0x3040..0x309F
$katakana = 0x30A0..0x30FF

$all = $hiragana + $katakana
$base = "https://unpkg.com/hanzi-writer-data-jp@latest"
$dest = "c:\kanji-writer\data"

foreach ($code in $all) {
    $char = [char]$code
    $url = "$base/$char.json"
    $file = "$dest\$char.json"
    
    if (!(Test-Path $file)) {
        try {
            Invoke-WebRequest -Uri $url -OutFile $file -ErrorAction Stop
            Write-Host "Downloaded $char"
        } catch {
            Write-Host "Failed $char (might not exist)"
        }
    }
}
