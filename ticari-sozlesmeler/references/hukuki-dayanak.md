# Hukuki Dayanak — Ticari Sözleşmeler

> Bu dosya `ticari-sozlesmeler` plugin'inin birincil kaynak katmanıdır. Atıflar Yargı PRO MCP üzerinden mevzuat.gov.tr güncel metninden teyit edilmiştir (teyit tarihi: 2026-08-25). Disiplin için bkz. kök `references/karar-atif-kurallari.md`.

## 1. Temel Mevzuat

| Kanun | No | Resmî Gazete | Kaynak |
|---|---|---|---|
| Türk Borçlar Kanunu | 6098 | 04.02.2011 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=6098&MevzuatTur=1&MevzuatTertip=5) |
| Türk Ticaret Kanunu | **6102** | 14.02.2011 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=6102&MevzuatTur=1&MevzuatTertip=5) |
| Damga Vergisi Kanunu (DVK) | 488 | 11.07.1964 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=488&MevzuatTur=1&MevzuatTertip=5) |
| Hukuk Uyuşmazlıklarında Arabuluculuk Kanunu | 6325 | 22.06.2012 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=6325&MevzuatTur=1&MevzuatTertip=5) |
| Kişisel Verilerin Korunması Kanunu | 6698 | 07.04.2016 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=6698&MevzuatTur=1&MevzuatTertip=5) |

## 2. Doğrulanmış Kritik Hükümler

### Geçerlilik ve yorum

- **TBK m.19 — Yorum:** Sözleşmenin türünün ve içeriğinin belirlenmesinde tarafların **gerçek ve ortak iradesi** esas alınır; kullanılan sözcüklere bakılmaksızın.
- **TBK m.27 — Kesin hükümsüzlük:** Emredici hükümlere, ahlaka, kamu düzenine, kişilik haklarına aykırı veya konusu imkânsız sözleşmeler **kesin olarak hükümszdür**; kısmi hükümsüzlük ve ayrılabilirlik kuralı metinde.
- **TBK m.28 — Aşırı yararlanma:** Karşılıklı edimler arasındaki açık oransızlık + zor durum/düşüncesizlik/deneyimsizlikten yararlanma → bağlı olmama ya da oransızlığın giderilmesi talebi; **1 yıl** (öğrenmeden/zor durumun kalkmasından itibaren) ve her hâlde **beş yıl** hak düşürücü süreler metinde.

### Cezai şart

> ⚠️ **Düzeltme kaydı:** Bu plugin'in önceki taslaklarında "TBK m.179-185" ibaresi kullanılıyordu. Güncel metin denetimi (2026-08-25) şunu gösterdi: **ceza sözleşmesi bölümü TBK m.179–182'de biter; m.183 itibarıyla "Beşinci Bölüm — Borç İlişkilerinde Taraf Değişiklikleri / Alacağın Devri" başlar (m.185 alacağın devrinin üçüncü kişilere etkisidir).** Tüm skill metinleri m.179–182 olarak düzeltilmiştir.

- **TBK m.179:** İfa edilmeme veya geç ifa için kararlaştırılan cezada alacaklı, aksi kararlaştırılmadıkça **ya borcu ya da cezayı** isteyebilir.
- **TBK m.182:** Cezanın miktarı serbestçe belirlenebilir; asıl borç geçersizse ceza istenemez; **hâkim aşırı gördüğü ceza koşulunu kendiliğinden indirir** (fahişlik tartışması buradan yürür).

### Süreler ve bildirim

- **TBK m.93 — İfa zamanının tatile rastlaması:** İfa zamanı veya sürenin son günü tatil güne rastlarsa kendiliğinden izleyen ilk iş gününe geçer; **aksine anlaşma geçerlidir** (`yenileme-takip`'teki erken uyarı mantığının hukuki zemini budur).
- **TTK m.18 — Basiretli tacir + ihbar şekli:** Tacirler arasında temerrüt, fesih, sözleşmeden dönme ihbarları **noter, taahhütlü mektup, telgraf veya güvenli elektronik imzalı KEP ile** yapılır (m.18/3).

### Diğer

- **TTK m.54–55 — Haksız rekabet:** Amaç/ilke (m.54); aldatıcı veya dürüstlük kuralına aykırı ticari uygulamalar haksız ve hukuka aykırıdır; hâlleri m.55'te sayılıdır (hafızada kalan bilgi/residuals maddelerinin ticari sır boyutuyla birlikte değerlendirilir).
- **TBK m.394 — Hizmet sözleşmesi:** Şekle bağlı değildir; ücret karşılığı iş + kabul ile kurulur (NDA'larda çalışan/servis sağlayıcı gizlilik bağlamının TBK zeminidir).
- **DVK 488 — Damga vergisi:** Kânûn düzeyinde teyitlidir; hangi işlemlerin kâğıda tabi olduğu (ek/tadil/teminat/sulh/devir) madde düzeyi kontrolü uzman incelemesine bırakılır — skill'lerin "hesaplama yapmadan uzmana yönlendir" duruşu bilinçlidir.
- **Arabuluculuk:** Genel çerçeve 6325; iş/alacak uyuşmazlıklarında dava şartı **7036 m.3** (bkz. `is-hukuku/references/hukuki-dayanak.md`). Ticari uyuşmazlıklarda zorunlu arabuluculuk kapsam kontrolünü somut dosyada özel kanuna göre yapın.

## 3. Temel İçtihat

Genel ispat/yorum çerçevesi için `dava-yonetimi/references/hukuki-dayanak.md` §3 kullanılır (HGK 2020/500 taraflarca getirilme ilkesi). Cezai şart fahişliği ve aşırı yararlanmaya özgü emsaller sonraki geçişte `semantik_ictihat_ara` ile eklenacaktır (bkz. §4).

## 4. Teyit Kuyruğu

- Cezai şart indirimi (m.182) ve aşırı yararlanmaya ilişkin Yargıtay/HGK emsalleri
- DVK kapsamındaki işlemlerin madde düzeyi listesi (ek, tadil, teminat, kefalet, sulh)
- Standart sözleşme/bildirim süreleri gibi Kurul uygulamasına tabi kalemler — KVKK tarafı için `kvkk-uyum/references/hukuki-dayanak.md`

## 5. Teyit Yöntemi

2026-08-25: `mevzuat_ara` (488) + `mevzuat_getir(madde)` (TBK m.19, 27, 28, 93, 179, 182, 183, 184, 185, 394; TTK m.18, 54) → bölüm sınırları da metinden doğrulandı. Numara ezberden yazılmaz.
