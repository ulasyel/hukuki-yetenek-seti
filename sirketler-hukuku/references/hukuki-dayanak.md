# Hukuki Dayanak — Şirketler Hukuku

> Bu dosya `sirketler-hukuku` plugin'inin birincil kaynak katmanıdır. Atıflar Yargı PRO MCP üzerinden mevzuat.gov.tr güncel metninden teyit edilmiştir (teyit tarihi: 2026-08-25). Disiplin için bkz. kök `references/karar-atif-kurallari.md`.

## 1. Temel Mevzuat

| Kanun | No | Resmî Gazete | Kaynak |
|---|---|---|---|
| Türk Ticaret Kanunu | **6102** | 14.02.2011 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=6102&MevzuatTur=1&MevzuatTertip=5) |
| Türk Borçlar Kanunu | 6098 | 04.02.2011 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=6098&MevzuatTur=1&MevzuatTertip=5) |
| Kamu İhale Sözleşmeleri Kanunu (KİSK) | 4735 | 22.01.2002 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=4735&MevzuatTur=1&MevzuatTertip=5) |
| Kişisel Verilerin Korunması Kanunu | 6698 | 07.04.2016 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=6698&MevzuatTur=1&MevzuatTertip=5) |

> ⚠️ **TTK numarası:** Güncel TTK **6102**'dir; eski 6762 yürürlükten kalkmıştır.

## 2. Doğrulanmış Kritik Hükümler

### Karar alma ve organ usulü

- **TTK m.390 — Yönetim kurulu kararları:** Üye tam sayısının çoğunluğu ile toplanır, hazır bulunanların çoğunluğu ile karar verir; **m.390/4:** hiçbir üye toplantı istemediğinde, bir üyenin karar şeklinde yazılmış önerisinin **en az üye tam sayısının çoğunluğunun yazılı onayıyla** karar verilebilir; onay kâğıtları karar defterine yapıştırılır veya karara dönüştürülür; **m.390/5:** geçerlilik yazılıp imzalanmış olmaya bağlıdır. *(Toplantısız/sirküler YK kararı pratiğinin doğrudan dayanağı budur.)*
- **TTK m.416 — Çağrısız genel kurul:** Bütün pay sahipleri veya temsilcileri itiraz etmedikçe, çağrı usulüne uyulmaksızın toplanabilir; gündeme **oybirliğiyle** madde eklenebilir.
- Karar taslaklarının geçerliliği ayrıca esas sözleşme, nisap, temsil ve defter formalitelerine göre hukukçu kontrolüne tabidir (skill metinlerindeki kapılar bilinçlidir).

### İşlem yapısı (M&A)

- **TTK m.136 vd. — Birleşme:** Devralma veya yeni kuruluş şeklinde birleşme; devralan şirket devrolunanın malvarlığını bütün hâlinde devralır, devrolunan sicilden silinir (m.136/4).
- **TBK m.202 — Malvarlığı/işletme devrinde sorumluluk:** Aktif-pasifleriyle devralan, bildirim/duyuru tarihinden itibaren borçlardan sorumludur; **iki yıl süreyle önceki borçlu müteselsilen sorumlu kalır**.
- **TTK m.11 — Ticari işletmenin bütünlüğü:** Ticari işletme bir bütün hâlinde devredilebilir; devir sözleşmesi yazılı yapılır, ticaret siciline tescil ve ilan edilir; aksi öngörülmedikçe duran malvarlığı, işletme değeri, kiracılık, ticaret unvanı ve fikrî mülkiyet haklarını içerdiği kabul olunur.
- **Pay/hisse devri — TTK m.487 vd.:** m.487 pay senetlerinin şekli (**nama yazılılar pay defterine kaydolunur**); hamiline yazılı senetlerin devri şirkete karşı ancak **zilyetliğin geçirilmesi + Merkezi Kayıt Kuruluşuna (MKK) bildirimle** hüküm ifade eder (m.489).
  > ⚠️ **Düzeltme kaydı:** Önceki taslaktaki "hisse devri (TTK m.495)" atfı düzeltilmiştir — m.495, borsada kote nama yazılı paylarda iktisap üst sınırına ilişkin özel bir hükümdür, genel devre dayanak değildir.
- **TBK m.205 — Sözleşmenin devri:** Devredenin taraf sıfatıyla bütün hak-borçlarını devralana geçiren anlaşma; sözleşmede kalan tarafın önceden izni veya sonradan onayı gerekir; **geçerlilik devredilen sözleşmenin şekline bağlıdır**.
- **KİSK m.16 — İhale sözleşmesinin devri:** Zorunlu hâllerde ihale yetkilisinin **yazılı izniyle**; aynı yüklenici üç yıl içinde başka sözleşme devredemez/devir alamaz; **izinsiz devir fesih + m.20/22/26 yaptırımlarını doğurur**.

### Veri boyutu

- **KVKK m.8 — Kişisel verilerin aktarılması (yurt içi):** Açık rıza esastır; m.5/2 veya yeterli önlemler alınarak m.6/3 şartlarında rızasız aktarım mümkündür. **KVKK m.9 — Yurt dışına aktarım:** güncel çerçeve için `kvkk-uyum/references/hukuki-dayanak.md` §2'ye bakınız (m.8 yürürlükte olup yurt içi aktarımı düzenler; "mülga" değildir).

### Sermaye piyasası

SPK/KAP/MKK yükümlülükleri olay bazında güncel mevzuattan doğrulanır (CLAUDE.md'deki SEC/NYSE yasak-guardrail'i bu ilkeye bağlıdır); kanun/yönetmelik numarası gerektiğinde `mevzuat_ara` ile o anda teyit edilir.

## 3. Temel İçtihat

Şirketler hukukuna özgü emsaller (kayıt dışı pay devrinin şirket bakımından etkisi, imtiyazlı pay, hakim/bağlı şirket sorumluluğu vb.) sonraki geçişte `semantik_ictihat_ara` ile eklenacaktır. Genel ispat çerçevesi için `dava-yonetimi/references/hukuki-dayanak.md` §3.

## 4. Teyit Kuyruğu

- TTK m.374–375 (yönetim kurulunun görev/yetki sınırları), m.418–421 (toplantı/karar nisabı) — written-consent akışlarının derinleştirilmesinde
- Limited şirket pay devri kuralları (m.553 vd.)
- SPK Tebliğleri (II-23.1 vb.) ve KAP/MKK ikincil düzenlemeleri
- Rekabet Kurumu birleşme-devralma tebliği eşikleri

## 5. Teyit Yöntemi

2026-08-25: `mevzuat_getir(madde)` (TTK m.11, 136, 390, 416, 487, 489, 495; TBK m.202, 205; KVKK m.8; KİSK m.16) → bölüm sınırları ve fıkra numaraları metinden doğrulandı. Numara ezberden yazılmaz.
