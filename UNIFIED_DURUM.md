# UNIFIED_DURUM — Gerçekçi Durum Matrisi

Bu dosya deponun **tek yetkili** durum kaydıdır. Geçmiş uyarlama denetimleri `references/gecmis-denetim/` altında arşivlenmiştir; oradaki iddialar (örn. "IP tamamlandı") bu matrisle çeliştiğinde buradaki doğrudur.

Durum etiketleri:
- ✅ ilk tur — Türk hukukuna temel uyarlama yapıldı
- 🔍 doğrulama turu bekliyor — atıflar Yargı PRO ile teyit edilecek, hukuki dayanak katmanı eklenecek
- 🔄 yeniden yazım — bilinen kusur nedeniyle skill düzeyinde yeniden yazım şart
- ⬜ başlangıç — iskelet kuruldu, içerik turu henüz planlanmadı

## Plugin Durumları

| Plugin | İlk Tur | Bilinen Açıklar | Sıradaki Adım |
|---|---|---|---|
| `is-hukuku` (eski adı: employment-legal) | ✅ | — | **Tur tamamlandı** (2026-08-25): dayanak katmanı (`references/hukuki-dayanak.md`) + atıf teyidi + Türkçe adlandırma |
| litigation-legal → `dava-yonetimi` | ✅ | FRE 408 ölü referansı düzeltildi; "HMK m.200 tanıklıktan çekinme" yanlış atfı **m.247 vd.** olarak düzeltildi; matter-briefing'te İngilizce kalan satır Türkçeleştirildi | **Tur tamamlandı** (2026-08-25): dayanak katmanı + 20+ madde teyidi + adlandırma |
| privacy-legal | ✅ | — | Doğrulama turu + adlandırma |
| commercial-legal | ✅ | — | Doğrulama turu + adlandırma |
| corporate-legal | ✅ | — | Doğrulama turu + adlandırma |
| product-legal | ✅ | — | Doğrulama turu + adlandırma |
| regulatory-legal | ✅ | — | Doğrulama turu + adlandırma |
| ip-legal | ✅* | *`clearance`: uydurma emsal ("AMF Inc. v. Yargıtay Boats", gerçeği *Sleekcraft*) ve Lanham Act/TESS kalıntıları · `takedown`: DMCA §512 iskeleti, kendi içinde çelişen süreler, kırık cümleler · `ip-renewal-watcher` agent: USPTO TSDR referansı | 🔄 clearance + takedown yeniden yazımı → sonra doğrulama turu |
| ai-governance-legal | ⬜ başlangıç | CLAUDE.md guardrail'leri kısmen çevrilmemiş; AIA/reg-gap/policy-staller Türkiye ekseninde tamamlanmadı | İkinci faz |
| managed-agent-cookbooks | ✅ | Gerçek UYAP/Yargı MCP bağlantısıyla smoke test yok | Smoke test |
| references (kök) | ✅ | Adaptasyon kaynak arşivi mevcut; alan bazlı dayanak dosyaları yok | Plugin turlarıyla birlikte doldurulacak |

## Kök Dosyalar

| Dosya | Durum |
|---|---|
| README.md | ✅ yeni kimlikle yazıldı; plugin tabloları turlar ilerledikçe güncellenir |
| INSTALL.md | ✅ opencode öncelikli kurulum yazıldı |
| NOTICE / LICENSE | ✅ NOTICE üç kaynağı bildirir; LICENSE Apache 2.0 dokunulmadı |
| CONNECTORS.md | 🔄 ABD ağırlıklı connector listesi; Yargı PRO/UYAP/UETS/KEP çizgisiyle yeniden yazılacak |
| CONTRIBUTING.md | 🔄 Türk katkı kuralları + atıf disiplini bağlantısı eklenecek |
| QUICKSTART.md | 🔄 yeni kimliğe göre güncellenecek |
| CODE_OF_CONDUCT.md | ✅ olduğu gibi kaldı |

## İşlem Sırası

~~employment~~ ✓ (2026-08-25) → ~~litigation~~ ✓ (2026-08-25) → privacy/KVKK → commercial → corporate → product → regulatory → IP (yeniden yazım dahil) → ai-governance

Her plugin turunda: denetim (residual/uydurma/ölü referans) → Yargı PRO dayanak araştırması (`hukuki-dayanak.md`) → atıf teyidi (teyitsiz silinir) → Türkçe adlandırma → marketplace senkronu → commit.

Son güncelleme: 2026-08-25
