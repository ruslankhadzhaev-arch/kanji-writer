$hiragana = 0x3040..0x309F
$katakana = 0x30A0..0x30FF
$all = $hiragana + $katakana
$base = "https://unpkg.com/hanzi-writer-data-jp@latest"
$dest = "c:\kanji-writer\data"

if (!(Test-Path $dest)) { New-Item -ItemType Directory -Path $dest }

foreach ($code in $all) {
    $char = [char]$code
    # Encode only the character part for the URL
    $encoded = [Uri]::EscapeDataString($char)
    $url = "$base/$encoded.json"
    $file = "$dest\$char.json"
    
    if (!(Test-Path $file)) {
        try {
            Invoke-WebRequest -Uri $url -OutFile $file -ErrorAction Stop
            Write-Host "Downloaded $char"
        } catch {
            Write-Host "Failed $char (URL: $url)"
        }
    } else {
        Write-Host "Skipping $char (exists)"
    }
}
