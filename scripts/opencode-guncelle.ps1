# hukuki-yetenek-seti - opencode kurulum / guncelleme
# Kullanim: powershell -ExecutionPolicy Bypass -File scripts\opencode-guncelle.ps1
# Yapar: (1) repoyu %USERPROFILE%\.opencode\skills altina klonlar veya ceker,
#        (2) her plugin icin skills kokune junction olusturur/duzeltir.
# Not: Ayni adda gercek (junction olmayan) klasor varsa dokunmaz - manuel yedekleyin.
$ErrorActionPreference = "Stop"

$repoUrl   = "https://github.com/ulasyel/hukuki-yetenek-seti.git"
$skillsRoot = Join-Path $env:USERPROFILE ".opencode\skills"
$repoDir    = Join-Path $skillsRoot "hukuki-yetenek-seti"

$plugins = @(
    "is-hukuku",            # eski ad: employment-legal
    "dava-yonetimi",        # eski ad: litigation-legal
    "kvkk-uyum",            # eski ad: privacy-legal
    "ticari-sozlesmeler",   # eski ad: commercial-legal
    "sirketler-hukuku",     # eski ad: corporate-legal
    "urun-hukuku",          # eski ad: product-legal
    "mevzuat-takip",         # eski ad: regulatory-legal
    "fikri-mulkiyet",       # eski ad: ip-legal
    "ai-governance-legal"
)

if (-not (Test-Path -LiteralPath $repoDir)) {
    New-Item -ItemType Directory -Path $skillsRoot -Force | Out-Null
    git clone $repoUrl $repoDir
    if ($LASTEXITCODE -ne 0) { throw "git clone basarisiz" }
} else {
    git -C $repoDir pull --ff-only
    if ($LASTEXITCODE -ne 0) { Write-Warning "pull basarisiz; yerel kopya ile devam ediliyor" }
}

foreach ($p in $plugins) {
    $target = Join-Path $repoDir $p
    $link   = Join-Path $skillsRoot $p

    if (-not (Test-Path -LiteralPath $target)) { Write-Warning "$p repoda yok - atlandi"; continue }

    if (Test-Path -LiteralPath $link) {
        $item = Get-Item -LiteralPath $link -Force
        if ($item.LinkType -eq "Junction") {
            if ("$($item.Target)" -ne "$target") {
                Remove-Item -LiteralPath $link -Force
                New-Item -ItemType Junction -Path $link -Target $target | Out-Null
                Write-Output "duzeltildi: $p -> $target"
            } else {
                Write-Output "hazir:      $p"
            }
        } else {
            Write-Warning "$p konumunda gercek klasor var - dokunulmadi; once yedekleyin (_eski-kopyalar)"
        }
    } else {
        New-Item -ItemType Junction -Path $link -Target $target | Out-Null
        Write-Output "olusturuldu: $p -> $target"
    }
}

Write-Output ""
Write-Output "Bitti. Guncellemeler icin bu betigi tekrar calistirmak yeterli (tek 'git pull')."
