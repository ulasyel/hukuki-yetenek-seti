# Karar ve Mevzuat Atıf Kuralları — Halüsinasyon Önleme Disiplini

> Bu dosya repo genelinde **tek yetkili atıf disiplini**dir. Her skill, spesifik bir mevzuat madde numarası, kanun adı/numarası veya mahkeme/kurum kararı atfı üretirken bu kurallara uymak zorundadır. Yaklaşım, kapital-legal/claude-for-tr-legal projesindeki halüsinasyon önleme disiplininden uyarlanmış ve **Yargı PRO MCP öncelikli** hale getirilmiştir.

## Neden Bu Kural Var?

Yanlış madde veya karar numarası:
- TBB Meslek Kuralları m.5 anlamında yanıltıcı bilgi riski taşır
- Müvekkil zararına ve avukatın sorumluluğuna yol açabilir
- Bir kez güveni yıktığında setin tüm çıktıları şüpheli hale gelir

## Atıf Zinciri — Üç Basamak, Sırayla

1. **Yargı PRO bağlıysa (varsayılan):**
   - Mevzuat: `mevzuat_ara(mevzuat_no)` / `mevzuat_getir(madde)` ile metni çek → numarayı ve içeriği teyit et → mevzuat.gov.tr bağlantısıyla ver.
   - Karar: `ictihat_ara(esas_no+karar_no)` veya `semantik_ictihat_ara` ile kararı bul → ilgili pasajı oku → Bedesten bağlantısıyla ver.
   - Kurum kararı (KVKK, Rekabet, SPK, BDDK, BTK, EPDK, GİB vb.): `kurum_karari_ara` → karar no + tarih + bağlantıyla ver.
   - Teyit edilen atıf, hangi araçtan geldiğiyle işaretlenir.

2. **Kullanıcı kaynak sağladıysa:** Kullanıcının yapıştırdığı karar/metni önceliklendir; "kullanıcı sağladı" olarak işaretle.

3. **İkisi de yoksa: NUMARA YAZMA.** Sadece konu başlığı yaz ve doğrulama yönlendirmesi ver:
   > "Bu konuda kararlar mevcuttur ancak numarayı kesin doğrulayamadığım için yazmıyorum. [Resmî kaynaktan] '[konu]' araması yapıp kararı bana paylaşırsanız analiz ederim."

## Sert Kurallar

1. **Teyitsiz spesifik numara YOKTUR.** Madde numarası, kanun no, karar esas/karar numarası, tarih — bunlardan hiçbiri 1. veya 2. basamak olmadan çıktıya girmez.
2. **Alıntı sadece gerçekten okunduysa.** "Karar şöyle der..." tırnak içi metin, yalnızca 1. veya 2. basamakta okunan metinden gelir.
3. **Belirsiz zaman ifadesi yoktur** ("en son", "yakın zamanda"). Tarih biliniyorsa verilir; bilinmiyorsa söylenmez.
4. **Mevzuat numaraları da kararlar kadar dikkatli denetlenir.** Örnek: zorunlu arabuluculuk için eski kaynaklardaki "7036 m.20/A" ibaresi güncel metinde **m.3**'tür (28/3/2023-7445/41 md. değişikliği) — ezber değil, güncel metin esas alınır.
5. **Karışma riskine karşı iki ayrı kaynak kontrolü:** Avukatlık Kanunu (1136) m.36 sır saklama yükümlülüğü ile TBB Meslek Kuralları'ndaki yakın madde aynı şey değildir; ikisini karıştırma.
6. **Emsal düzeyi doğru anlatılır.** İlk derece kararı "Yargıtay kararı" gibi sunma; daire/HGK/YİDK bilgisi teyitle birlikte verilir.

## Etiket Sözleşmesi

| Etiket | Anlam |
|---|---|
| `[Yargı PRO — mevzuat.gov.tr]` | Madde/kayıp bu oturumda mevzuat aracından teyit edildi |
| `[Yargı PRO — Bedesten]` | Karar bu oturumda yargı aracından bulundu, bağlantı verildi |
| `[kullanıcı sağladı]` | Metin kullanıcıdan geldi |
| `[doğrulanmalı]` | Genel bilgi; spesifik numara içermez, avukat teyidi önerilir |

Etiket, provenance bildirir; "doğru olduğu" iddiası taşımaz. Plugin'in pratik profilindeki İnceleyici Notu bloğunda kaynak durumu toplanır.

## Skill Geliştirici Kontrol Listesi

- [ ] Çıktıda spesifik numara var mı? → Hangi basamaktan geldi?
- [ ] Alıntı var mı? → Okunan metinden mi?
- [ ] Emsal bağlantısı çalışır mı? (Bedesten deseni: `https://mevzuat.adalet.gov.tr/ictihat/<belge-id>`)
- [ ] Plugin'in `references/hukuki-dayanak.md` dosyasındaki emsal kullanılıyorsa oradaki özetle uyumlu mu?

Son güncelleme: 2026-08-25
