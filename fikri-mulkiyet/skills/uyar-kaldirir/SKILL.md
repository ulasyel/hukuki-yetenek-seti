---
name: uyar-kaldirir
description: >
  FSEK Ek Madde 4 uyar-kaldır bildirimi hazırlar, tebliğ edilen bir uyarıya
  yanıt triyajı yapar veya içerik kaldırmaya itiraz çerçevesi kurar.
  "İçeriğim çalındı/kaldırın", "bana uyar-kaldır geldi", "telif ihlali
  bildirimi" söylemlerinde tetiklenir. FSEK istisnaları (şahsi kullanım,
  iktibas vb.) ve iftira/haksız rekabet riski kontrolü uygular.
argument-hint: "<--gonder | --yanitla> [bağlam veya gelen bildirimin yolu]"
---

# /uyar-kaldirir

## Cold-start kontrolü
Profil yoksa `/fikri-mulkiyet:kurulum-mulakati` komutuna yönlendir.

> ⚖️ **Bu skill ABD DMCA (17 U.S.C. §512) prosedürünü DEĞİL**, Türkiye'nin kendi uyar-kaldır mekanizmasını uygular: **FSEK Ek Madde 4/3** (Ek: 21/2/2001-4630/37 md.; üçüncü fıkra değişiklik 3/3/2004-5101/25). Metin `references/hukuki-dayanak.md` §2'de alıntılanmıştır.

## Hukuki Çerçeve (doğrulanmış)

### Uyar-kaldır akışı — FSEK Ek Madde 4/3

1. **Adım 1 — İçerik sağlayıcıya başvuru:** Hakları haleldar olan gerçek/tüzel kişi, öncelikle ihlâle konu içeriği yayınlayan **bilgi içerik sağlayıcısına** başvurarak **üç gün içinde** ihlâlin durdurulmasını ister.
2. **Adım 2 — Savcılık:** İhlâl devam ederse, **Cumhuriyet savcısına** yapılan başvuru üzerine savcı, **üç gün içinde servis sağlayıcıdan** ihlâle devam eden bilgi içerik sağlayıcısına verilen hizmetin durdurulmasını ister.
3. İhlâl durdurulursa servise devam edilir; servis sağlayıcılar bilgi içerik sağlayıcı listesini her ayın ilk iş günü Bakanlığa bildirir; usul yönetmelikle düzenlenir.

### Destek hükümler

- **5651 m.4 — İçerik sağlayıcı sorumluluğu:** İçerik sağlayıcı sunduğu her türlü içerikten sorumludur; yalnızca bağlantı sağladığı başkasına ait içerikten sorumlu değildir — ancak içeriği benimsediği ve kullanıcıyı o içeriğe ulaştırmayı amaçladığı sunuş biçiminden açıkça belliyse genel hükümlere göre sorumludur.
- **FSEK m.69 — Tecavüzün men'i davası** ve **m.70 — Tazminat davası:** Uyar-kaldır dışındaki yargı yolları.
- **SMK m.29** bağlamında marka konusu varsa bu bir FSEK uyar-kaldırı değil, marka tecavüzü ihtarnamesi akışıdır (`/fikri-mulkiyet:ip-ihtarnamesi`).

### Kaldırma talebinin reddi sebepleri — istisna kontrolü

Talep şu FSEK sınırlarına denk geliyorsa "ihlal" sayılmaz:

- **Şahsi kullanım istisnası** (FSEK m.38)
- **İktibas** ve haber amacıyla kullanım (m.35–37)
- Eğitim/öğretim amaçlı seçme-toplama (m.34), temsil serbestisi (m.33) gibi diğer sınırlamalar
- Eserin koruma süresinin dolmuş olması; eser kavramına girmeyen, özgün olgunun taşımaları

Somut istisnanın metni dosyada doğrulanmadan "istisna kapsamındadır" denmez.

## Mod 1: `--gonder` (uyarı hazırlama)

### Girdiler
1. Hak sahibi kimliği + hakkın dayanağı (eser, tescil/tescilsizlik, yayım bilgisi)
2. İhlâl URL'leri ve ekran görüntüleri
3. Bilgi içerik sağlayıcının kimliği (site sahibi/operatör)

### Uyarı metni iskeletinde zorunlu unsurlar
- Hak sahibinin kimliği ve hakka ilişkin açıklama
- İhlâl iddiasının somut tanımı + URL listesi (ekran görüntüsü ekli)
- **Üç günlük süre hatırlatması** ve FSEK Ek Madde 4 dayanağı
- Devam hâlinde savcılığa başvuru yoluyla servis kesintisi talebi ihtarı
- Avukat imzası/ihracı kapısı: metin avukat onayı olmadan gönderilmez

### Gönderim kanalı
Noter ihtarnamesi, KEP veya site üzerinden kayıt bırakan resmi kanal — kanıtlanabilirlik için yazılı delil bırakan yol seçilir.

### İftira / haksız rekabet kapısı
- İhlal şüphesi somut değilse (örn. bağımsız geliştirme, lisans varlığı) uyarı gönderme kararı avukata aittir.
- Rakibi susturma amacına dönük kötüye kullanım, karşı tarafın haksız rekabet/TBK m.49 talebine zemin verebilir — bayrakla.

## Mod 2: `--yanitla` (gelen uyarı triyajı)

Gelen bildirimden çıkar:
1. Kim uyarıyor, hangi hakka dayanıyor? (Hak belgesi sunulmuş mu?)
2. Hangi içerik/URL? Gerçekten müvekkil içeriği mi?
3. Süre verildi mi? (Ek Madde 4'te 3 gün — kısa!)

Karar tablosu:

| Durum | Seçenek |
|---|---|
| İhlal bariz | İçeriği kaldır + gerekçeli yanıt; ileride dava riskine hazırlık |
| İstisna kapsamında görünüyor (şahsi kullanım, iktibas...) | Kaldırma; istisnanın metnine dayalı gerekçeli cevap `[istisna maddesini doğrula]` |
| Hak sahipliği belirsiz | Belge iste + savunma pozisyonu; 3 gün içinde sessiz kalma |
| Kötüniyetli/iftirî uyarı | Yanıt + olası menfi tespit/haksız rekabet karşı hamlesi değerlendirmesi |

Her satırda: `[doğrulanmalı]` etiketi disiplini uygulanır; karar avukatındır.

## Çıktı Kuralları
- Her çıktının üstünde İnceleyici Notu: kaynaklar, okunan belgeler, avukat onayı gerektiren adımlar.
- Karar/madde numarası yalnızca Yargı PRO teyidiyle veya bu dosyadaki doğrulanmış metinden verilir.
- UYAP/savcılık başvurusu, içerik kaldırma veya gönderim işlemi otomatik yapılmaz.

## TBB Meslek Kuralları
Müvekkil sırrı (Av.K. m.36); karşı taraf iletişiminde mesleki nezaket; iftira riski bayraklaması.
