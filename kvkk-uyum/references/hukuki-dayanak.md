# Hukuki Dayanak — KVKK / Veri Koruma

> Bu dosya `kvkk-uyum` plugin'inin birincil kaynak katmanıdır. Tüm atıflar **Yargı PRO MCP** üzerinden (mevzuat.gov.tr güncel metni + KVKK resmi duyuruları) teyit edilmiştir (teyit tarihi: 2026-08-25). Disiplin için bkz. kök `references/karar-atif-kurallari.md`.

## 1. Temel Mevzuat

| Düzenleme | Kayıt | Kaynak |
|---|---|---|
| Kişisel Verilerin Korunması Kanunu (6698) | RG 07.04.2016 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=6698&MevzuatTur=1&MevzuatTertip=5) |
| **7499 sayılı Değişiklik Kanunu** (KVKK m.6/m.9'u yenileyen omnibus kanun) | RG 12.03.2024 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=7499&MevzuatTur=1&MevzuatTertip=5) |
| Veri Sorumlusuna Başvuru Usul ve Esasları Hakkında Tebliğ | RG 10.03.2018 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=24455&MevzuatTur=9&MevzuatTertip=5) |
| Veri Sorumluları Sicili Hakkında Yönetmelik (**VERBİS**) | RG 30.12.2017 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=24276&MevzuatTur=7&MevzuatTertip=5) |

> ⚠️ **Güncel rejim notu:** KVKK m.6 (özel nitelikli veri) ve m.9 (yurt dışına aktarım) **2/3/2024 tarihli 7499 sayılı Kanunla** tamamen yenilenmiştir ("(Değişik: 2/3/2024-7499/33-34 md.)"). Eski m.9 çerçevesi (açık rıza merkezli üç yol) artık geçerli değildir.

## 2. Doğrulanmış Kritik Hükümler

Aşağıdaki her satır ilgili maddenin güncel metninden (`mevzuat_getir`) özetlenmiştir.

- **m.5 — İşlenme şartları:** Açık rıza esastır; altı istisna (kanun, hayat-beden bütünlüğü, sözleşmenin ifası, hukuki yükümlülük, alenileştirme, hakkın tesisi/kullanımı/korunması, meşru menfaat).
- **m.6 — Özel nitelikli kişisel veri:** İşlenmesi esasa aykırıdır; istisnalar (a–g) sayılıdır; **ayrıca Kurulca belirlenen yeterli önlemlerin alınması şarttır (m.6/4)**. Eski m.6/2 (sağlık/sahtelik hariç yeterlilik şartı) **mülga** olmuştur.
- **m.9 — Yurt dışına aktarım (yeni çerçeve):**
  - Önce **yeterlilik kararı** (Kurul verir, RG'de yayımlanır, en geç dört yılda bir değerlendirilir);
  - Yoksa **uygun güvenceler:** (a) kamu kurumları arası uluslararası anlaşma niteliğinde olmayan anlaşma + Kurul izni, (b) bağlayıcı şirket kuralları, (c) **Kurulun ilan ettiği standart sözleşme**, (ç) yazılı taahhütname + Kurul izni;
  - **Standart sözleşme, imzadan itibaren beş iş günü içinde Kuruma bildirilir (m.9/5);**
  - Güvence sağlanamıyorsa **arızi** aktarım istisnaları (m.9/6: açık rıza, sözleşmenin ifası vb.);
  - Usul ve esaslar yönetmelikle düzenlenir (m.9/11).
- **m.10 — Aydınlatma yükümlülüğü:** Asgari unsurlar (sorumlu kimliği, amaç, alıcılar, yöntem-hukuki sebep, m.11 hakları).
- **m.11 — İlgili kişi hakları:** Öğrenme, bilgi talebi, amacı öğrenme, aktarım bilgisi, düzeltme, silme-yok etme, üçüncü kişiye bildirim talep etme, otomatik sisteme itiraz, zararın giderilmesi (a–ğ).
- **m.12 — Veri güvenliği:** Teknik-idari tedbirler; veri işleyenle **müştereken sorumluluk (m.12/2)**; denetim (m.12/3); sır saklama yükümlülüğü görevden ayrılma sonrasında da sürer (m.12/4); **kanuni olmayan elde edilmede veri sorumlusu durumu en kısa sürede ilgilisine ve Kurula bildirir (m.12/5)**.
- **m.13 — Veri sorumlusuna başvuru:** Yazılı veya Kurulun belirleyeceği diğer yöntemlerle; **en kısa sürede ve en geç otuz gün içinde** ücretsiz sonuçlandırma; kabul ya da **gerekçesinin açıklanarak reddi**; cevap yazılı veya elektronik ortamda.

### İhlal bildirimi çerçevesi (Kurul kararları — resmi duyurudan teyitli)

| Karar | Tarih | İçerik |
|---|---|---|
| **Kurul 2019/10** | 24.01.2019 | Veri ihlali bildirimi usul ve esasları: veri işleyen herhangi bir gecikmeye yer vermeksizin veri sorumlusuna; veri sorumlusu **en kısa sürede** Kurula ve etkilenen kişilere bildirim yapar ([KVKK resmi duyurusu](https://www.kvkk.gov.tr)) |
| **Kurul 2019/271** | 18.09.2019 | İlgili kişiye yapılacak ihlal bildiriminin **asgari unsurları**: ihlalin gerçekleştiği zaman, etkilenen veri kategorileri (kişisel/özel nitelikli ayrımıyla), olası sonuçlar, alınan/alınacak tedbirler, iletişim bilgileri |

> ⚠️ **"72 saat" nüansı:** KVKK m.12/5 metni **"en kısa sürede"** der; "72 saat" ifadesi GDPR kökenlidir ve Kurul uygulamasında pratik ölçü olarak yaygındır. Skill'lerde süre varsayımı ancak güncel Kurul kaynağına atıfla kullanılır — mutlak yasal süre gibi sunulmaz.

## 3. Temel İçtihat

Bu alanın birincil otoritesi Kurul kararlarıdır (§2 tablosuna bakınız). Mahkeme içtihadı gerektiren konularda (örn. zarar giderimi, tazminat) `dava-yonetimi/references/hukuki-dayanak.md` §3'teki genel emsaller ve `kurum_karari_ara` üzerinden konuya özgü Kurul kararları kullanılır; spesifik numara ancak o anda teyitle verilir.

## 4. Teyit Kuyruğu

- Kişisel Verilerin İşlenmesinde Veri Güvenliğine İlişkin Yönetmelik (RG 24.01.2018) — kayıt düzeyi teyidi sonraki geçişte
- Standart sözleşmeyi ilan eden Kurul kararı numarası — kullanılacaksa `kurum_karari_ara` ile o anda teyit edilir
- Çerez/electronik ticaret (ETK/İYS) arayüz düzenlemeleri — product/regulatory plugin dayanak dosyalarıyla koordinasyon

## 5. Teyit Yöntemi

2026-08-25: `mevzuat_getir(madde)` (m.5–13) → madde metinleri; `mevzuat_ara` (7499, Tebliğ, VERBİS Yönetmeliği) → kayıt düzeyi; `kurum_karari_ara(kvkk)` → Kurul 2019/10 ve 2019/271. Numara ezberden yazılmaz.
