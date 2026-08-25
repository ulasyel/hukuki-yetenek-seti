# Hukuki Dayanak — Ürün / Tüketici / Reklam

> Bu dosya `urun-hukuku` plugin'inin birincil kaynak katmanıdır. Atıflar Yargı PRO MCP üzerinden teyit edilmiştir (teyit tarihi: 2026-08-25). Disiplin için bkz. kök `references/karar-atif-kurallari.md`.

## 1. Temel Mevzuat

| Düzenleme | Kayıt | Kaynak |
|---|---|---|
| Tüketicinin Korunması Hakkında Kanun (6502) | RG 28.11.2013 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=6502&MevzuatTur=1&MevzuatTertip=5) |
| Elektronik Ticaretin Düzenlenmesi Hakkında Kanun (6563) | RG 05.11.2014 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=6563&MevzuatTur=1&MevzuatTertip=5) |
| Ticari Reklam ve Haksız Ticari Uygulamalar Yönetmeliği | RG 10.01.2015 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=20435&MevzuatTur=7&MevzuatTertip=5) |
| Mesafeli Sözleşmeler Yönetmeliği | RG 27.11.2014 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=20237&MevzuatTur=7&MevzuatTertip=5) |
| Finansal Hizmetlere İlişkin Mesafeli Sözleşmeler Yönetmeliği | RG 31.01.2015 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=20495&MevzuatTur=7&MevzuatTertip=5) |
| Kişisel Verilerin Korunması Kanunu | 6698 | bkz. `kvkk-uyum/references/hukuki-dayanak.md` |

## 2. Doğrulanmış Kritik Çerçeve Notları

- **Reklam iddiaları:** Ticari reklam ve haksız ticari uygulamaların denetimi Ticaret Bakanlığı **Reklam Kurulu** nezdindedir; kanıt yükü, karşılaştırmalı/mutlak iddia ve etkileyici (influencer) içerik kuralları Yönetmelik + Kurul ilke kararlarıyla şekillenir. Kurul karar numarası gerektiğinde `kurum_karari_ara(kurum:"reklam")` ile o anda teyit edilir; ezberden yazılmaz.
- **E-ticaret rolleri:** 6563'ün ETHS (elektronik ticareti yapan) / ETAHS (aracı hizmet sağlayıcı) ayrımı, sipariş onayı, bilgi verme yükümlülükleri ve ETBİS kaydı lansman kapılarının dayanağıdır; eşikler ve idari para cezaları yıllık güncellenir (`references/currency-watch.md`).
- **Mesafeli satış:** Ön bilgilendirme, sipariş özeti, 14 gün cayma hakkı ve istisnaları Mesafeli Sözleşmeler Yönetmeliği'nin konusudur; finansal ürünlerde özel yönetmelik uygulanır.
- **Fiyat/abonelik/otomatik yenileme:** 6502 + ikincil düzenlemeler; tutar/eşik bilgileri (tüketici hakem heyeti parasal sınırları vb.) her yıl değişir — skill çıktısında mutlak rakam verilmez, resmi kaynaktan kontrol ettirilir.
- **Sağlık/gıda/kozmetik iddiaları:** TİTCK izinleri ve sektör mevzuatı; sağlık beyanı riski yüksek kategori olarak işaretlenir.

## 3. Temel İçtihat

Tüketici hukuku emsalleri (haksız şart, cayma ihtilafları, garanti) sonraki geçişte `semantik_ictihat_ara` ile eklenacaktır; tüketici davalarında yerel mahkeme kararları yoğun olduğundan emsal seçimi somut dosyada yapılır.

## 4. Teyit Kuyruğu

- Tüketicinin Korunması Hakkında Yönetmelik, Abonelik Sözleşmeleri Yönetmeliği, Fiyat Etiketi Tebliğleri
- ETBİS kayıt usulü ve güven damgası düzenlemeleri
- Reklam Kurulu sektör duyurularının karar numarası düzeyinde envanteri

## 5. Teyit Yöntemi

2026-08-25: `mevzuat_ara` (6502, 6563, iki yönetmelik) → kayıt düzeyi teyit. Numara ezberden yazılmaz.
