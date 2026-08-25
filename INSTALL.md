# Kurulum

Set iki platformda çalışır: **opencode** (öncelikli) ve Claude Code. Her ikisi de aynı markdown tabanlı skill dosyalarını (`SKILL.md`) okur; platforma göre kurulum yolu farklıdır.

## opencode (öncelikli)

**Önerilen yöntem — git klonu + junction:** Repoyu doğrudan skill klasörüne klonlayıp plugin'leri junction ile bağlamak, güncellemeleri tek komuta indirger:

```powershell
# Bu repodan:
powershell -ExecutionPolicy Bypass -File scripts\opencode-guncelle.ps1
```

Betik; `%USERPROFILE%\.opencode\skills\hukuki-yetenek-seti` altına klon açar (yoksa), `git pull --ff-only` ile günceller ve 9 plugin için `~/.opencode/skills/<plugin>` junction'larını kurar/düzeltir. Aynı adda **gerçek klasör** varsa güvenlik gereği dokunmaz — önce onu yedekleyin.

Bundan sonra seti güncellemek = betiği tekrar çalıştırmak. Repo güncellendiği anda tüm skill'ler güncellenmiş olur.

### Elle kurulum (alternatif)

opencode, `~/.opencode/skills/` altındaki klasörleri tarar. Plugin klasörünü olduğu gibi kopyalamak yeterlidir:

```
kaynak: <repo>\employment-legal\
hedef:  %USERPROFILE%\.opencode\skills\employment-legal\
```

Tüm set için (repo kökünde PowerShell):

```powershell
$plugins = "is-hukuku","dava-yonetimi","kvkk-uyum","ticari-sozlesmeler","corporate-legal","product-legal","regulatory-legal","ip-legal","ai-governance-legal"
foreach ($p in $plugins) {
    Copy-Item -Recurse -Force -LiteralPath ".\$p" -Destination "$env:USERPROFILE\.opencode\skills\"
}
```

**Güncellemelerin otomatik geçmesi için** kopyalama yerine dizin junction kullanın (yönetici izni gerektirmez):

```powershell
foreach ($p in $plugins) {
    $target = "$env:USERPROFILE\.opencode\skills\$p"
    if (Test-Path -LiteralPath $target) { Remove-Item -Recurse -Force -LiteralPath $target }
    New-Item -ItemType Junction -Path $target -Value (Resolve-Path ".\$p") | Out-Null
}
```

Kurulumdan sonra opencode'u yeniden başlatın. Skill'ler açıklamalarındaki tetikleyicilere göre otomatik devreye girer.

## Claude Code

```text
# Bu depoyu marketplace olarak ekle
/plugin marketplace add <bu-repo'nun-yolu-veya-GitHub-URL'si>

# İhtiyacınız olan plugin'leri kurun
/plugin install is-hukuku@hukuki-yetenek-seti
```

Claude Code'u yeniden başlattıktan sonra her plugin için cold-start interview çalıştırın:

```text
/is-hukuku:kurulum-mulakati
```

Interview, pratik profilinizi `%USERPROFILE%\.claude\plugins\config\hukuki-yetenek-seti\<plugin>\CLAUDE.md` yoluna yazar; diğer tüm skill'ler buradan okur.

## Yargı PRO MCP (önerilir)

Atıf doğrulaması ve emsal araştırması için [Yargı PRO](https://github.com/yargi-mcp) MCP sunucusunu bağlayın. Bağlı değilken skill'ler spesifik karar/madde numarası üretmez — konu başlığı verip resmi kaynaktan teyit ister.

## İlk kontrol

Herhangi bir plugin'de bir skill'i çalıştırıp çıktının üstündeki **İnceleyici Notu / Reviewer note** bloğuna bakın: kaynak durumu ve doğrulama uyarıları orada toplanır.
