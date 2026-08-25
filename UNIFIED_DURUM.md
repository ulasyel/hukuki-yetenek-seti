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
| privacy-legal → `kvkk-uyum` | ✅ | — | **Tur tamamlandı** (2026-08-25): dayanak katmanı (m.5–13 + 7499 değişikliği + Kurul 2019/10, 2019/271) + adlandırma; "72 saat" nüansı dayanakta netleştirildi |
| commercial-legal → `ticari-sozlesmeler` | ✅ | **Sistematik atıf hatası düzeltildi:** "TBK m.179-185" → **m.179-182** (12 dosyada); TBK m.93/m.394 şüpheleri teyitle temizlendi | **Tur tamamlandı** (2026-08-25): dayanak katmanı + adlandırma |
| corporate-legal → `sirketler-hukuku` | ✅ | "Hisse devri TTK m.495" atfı düzeltildi (**m.487 vd.**); KVKK m.8'in yurt içi aktarım için yürürlükte olduğu teyit edildi | **Tur tamamlandı** (2026-08-25): dayanak katmanı + 11 madde teyidi + adlandırma |
| product-legal → `urun-hukuku` | ✅ | — | **Tur tamamlandı** (2026-08-25): dayanak katmanı (6502/6563 + iki yönetmelik teyidi) + adlandırma |
| regulatory-legal → `mevzuat-takip` | ✅ | — | **Tur tamamlandı** (2026-08-25): kaynak dayanak katmanı (Yargı PRO kurum erişimi) + adlandırma |
| ip-legal → `fikri-mulkiyet` | ✅ | **Yeniden yazım tamamlandı:** clearance (SMK m.6/9/29 + BAM/FSHHM emsalleri) ve takedown (FSEK Ek Madde 4/3 + 5651 m.4) tamamen yeniden yazıldı; uydurma "*AMF Inc. v. Yargıtay Boats*" silindi; fto/infringement/ip-clause/oss/cease-desist/renewal-watcher kalıntıları temizlendi | **Tur tamamlandı** (2026-08-25): dayanak katmanı + adlandırma |
| ai-governance-legal → `yz-yonetisim` | ⬜→✅ ilk tur | "EU AI Act (ve Türkiye uyumu)" artefaktı ve Westlaw/CourtListener etiketleri temizlendi; ABD örnekleri kısmen kaldı | **Adlandırma + dayanak tamamlandı** (2026-08-25); içerik ikinci faza kaldı |
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

~~employment~~ ✓ → ~~litigation~~ ✓ → ~~privacy/KVKK~~ ✓ → ~~commercial~~ ✓ → ~~corporate~~ ✓ → ~~product~~ ✓ → ~~regulatory~~ ✓ → ~~IP~~ ✓ → ~~ai-governance~~ ✓ (2026-08-25)

Her plugin turunda: denetim (residual/uydurma/ölü referans) → Yargı PRO dayanak araştırması (`hukuki-dayanak.md`) → atıf teyidi (teyitsiz silinir) → Türkçe adlandırma → marketplace senkronu → commit.

Son güncelleme: 2026-08-25
