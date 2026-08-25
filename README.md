# hukuki-yetenek-seti

Türk hukuku pratiği için Claude Code **ve** opencode uyumlu yetenek (skill) seti. [anthropics/claude-for-legal](https://github.com/anthropics/claude-for-legal) projesinin iskeletini; iki Türk uyarlamasının ([ZekaiSuni/claude-for-legal-turkish](https://github.com/ZekaiSuni/claude-for-legal-turkish) içerik uyarlaması ve [kapital-legal/claude-for-tr-legal](https://github.com/kapital-legal/claude-for-tr-legal) metodolojisi) tek çatıda birleştirir.

> ⚠️ **Bu set hukuki danışmanlık vermez.** Üretilen her çıktı avukat incelemesine tabi taslaktır. Mevzuat, içtihat, süre ve resmi kaynak kontrolleri somut dosya için ayrıca doğrulanmalıdır.

## Fark: Doğrulanmış Hukuki Dayanak

Bu deponun ayırt edici ilkesi üçlüdür:

1. **Uydurma atıf yok.** Spesifik kanun maddesi veya karar numarası, birincil kaynaktan teyit edilmeden skill metinlerinde yer alamaz. Teyit edilemeyen atıf silinir; yerine konu başlığı + doğrulama yönlendirmesi yazılır.
2. **Her alanın hukuki dayanak katmanı vardır.** Her plugin `references/hukuki-dayanak.md` dosyasıyla gelir: alanın temel mevzuatı (mevzuat.gov.tr bağlantılı), temel içtihadı (Bedesten bağlantılı emsaller) ve kurum kararları — tamamı Yargı PRO MCP ile birincil kaynaklardan teyit edilir.
3. **Atıf disiplini.** Karar/madde numarası üretme kuralları `references/karar-atif-kurallari.md` içinde sert prompt-level kural olarak tanımlıdır (Kapital Legal'in yaklaşımından uyarlanmıştır).

## Plugin'ler

| Plugin | Alan | Durum |
|---|---|---|
| `ticari-sozlesmeler` | Ticari sözleşmeler (TBK/TTK/DVK/6325) | İlk tur ✓ · dayanak katmanı ✓ · adlandırma ✓ |
| `corporate-legal` | Şirketler hukuku (TTK/SPK/MERSİS) | İlk tur uyarlama ✓ · doğrulama turu sürüyor |
| `litigation-legal` | Dava yönetimi (HMK/İİK/UYAP) | İlk tur uyarlama ✓ · doğrulama turu sürüyor |
| `privacy-legal` | KVKK / veri koruma | İlk tur uyarlama ✓ · doğrulama turu sürüyor |
| `is-hukuku` | İş hukuku (İK/SGK/arabuluculuk) | İlk tur ✓ · dayanak katmanı ✓ · adlandırma ✓ |
| `dava-yonetimi` | Dava yönetimi (HMK/CMK/UYAP) | İlk tur ✓ · dayanak katmanı ✓ · adlandırma ✓ |
| `kvkk-uyum` | KVKK / veri koruma | İlk tur ✓ · dayanak katmanı ✓ · adlandırma ✓ |
| `product-legal` | Ürün/tüketici/reklam/e-ticaret (6502/6563) | İlk tur uyarlama ✓ · doğrulama turu sürüyor |
| `regulatory-legal` | Regülasyon izleme (Resmî Gazete/kurumlar) | İlk tur uyarlama ✓ · doğrulama turu sürüyor |
| `ip-legal` | Fikri mülkiyet (FSEK/SMK/PVK/5651) | Yeniden yazım aşamasında |
| `ai-governance-legal` | AI yönetişimi (KVKK/TTK ticari sır/FSEK ekseninde) | Başlangıç uyarlaması |

Güncel ve dürüst durum matrisi: [UNIFIED_DURUM.md](UNIFIED_DURUM.md)

## Kurulum

- **opencode:** bkz. [INSTALL.md](INSTALL.md) § opencode (öncelikli platform)
- **Claude Code:** bkz. [INSTALL.md](INSTALL.md) § Claude Code

## Araştırma Omurgası

Citation doğrulaması ve emsal araştırması **Yargı PRO MCP** üzerinden yapılır: Yargıtay/Danıştay/yerel yargı kararları, Anayasa Mahkemesi, AİHM, mevzuat.gov.tr ve kurum kararları (KVKK, Rekabet, SPK, BDDK, BTK, EPDK, GİB vb.). Bağlı olmadığında skill'ler atıf üretmez; konu başlığıyla doğrulamaya yönlendirir.

Yargı PRO'nun dayandığı açık kaynak MCP projeleri, geliştiricisi **Said Sürücü** tarafından yayımlanmıştır:

- [saidsurucu/yargi-mcp](https://github.com/saidsurucu/yargi-mcp) — Türk yargı kararları arama ve tam metin erişimi
- [saidsurucu/mevzuat-mcp](https://github.com/saidsurucu/mevzuat-mcp) — mevzuat.gov.tr mevzuat arama ve madde erişimi

## Soyağacı ve Lisans

Kaynaklar ve modifikasyon bildirimi: [NOTICE](NOTICE). Lisans: Apache 2.0 ([LICENSE](LICENSE)). Bu proje Anthropic'in veya Kapital Legal'in resmi ürünü değildir.
