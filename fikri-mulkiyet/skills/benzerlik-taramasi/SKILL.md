---
name: benzerlik-taramasi
description: >
  Marka benzerlik ön taraması — knockout + benzer işaret kontrolü; sonuç bir
  "bayrak listesi"dir, benzerlik görüşü değildir. Yeni bir marka önerildiğinde,
  "bu marka kullanılabilir mi / tescil edilebilir mi" sorulduğunda veya tam
  profesyonel araştırma öncesi karışıklık ihtimali faktörlerini
  değerlendirmek istendiğinde tetiklenir. Bu skill hiçbir zaman "markanız
  temizdir" sonucu vermez.
argument-hint: "[önerilen marka, mal/hizmet sınıfları ve hedef pazarı yazın — sadece markayı da yazabilirsiniz, sorarım]"
---

# /benzerlik-taramasi

## Cold-start kontrolü
Profil yoksa `/fikri-mulkiyet:kurulum-mulakati` komutuna yönlendir.

## Hukuki Çerçeve (doğrulanmış)

Bu skill 6769 sayılı Sınai Mülkiyet Kanunu (SMK) üzerinden çalışır:

- **SMK m.6/1 — Nispi ret sebebi:** Başvuru konusu marka ile önceki marka arasında **aynılık/benzerlik** ve mal/hizmetlerin aynılığı/benzerliği nedeniyle **karıştırılma ihtimali** (halk tarafından ilişkilendirilme ihtimali dâhil) varsa başvuru itiraz üzerine reddedilir.
- **SMK m.6/4–5 — Tanınmışlık:** Paris Sözleşmesi 6 mükerrer anlamındaki tanınmış markalar (m.6/4) ve Türkiye'de tanınmışlık düzeyi nedeniyle haksız yarar/itibar zedelenmesi/ayırt edicilik zedelenmesi ihtimalleri (m.6/5), aynı-benzer **veya farklı** mal/hizmetlerde dahi red sebebidir.
- **SMK m.6/9 — Kötüniyet:** Kötüniyetle yapılan başvurular reddedilir.
- **SMK m.29 — Tecavüz fiilleri:** Markanın izinsiz kullanımı ve **ayırt edilemeyecek kadar benzereyle** taklit; taklidi bildiği/bilmesi gerektiği hâlde tecavüzlü ürünü satma/dağıtma/ithal etme dahi tecavüzdür.
- **SMK m.9 — Kullanım yükü:** Tescilden itibaren beş yıl içinde haklı sebep olmaksızın ciddi biçimde kullanılmayan marka iptal edilir (pasif portföy riski).

Tam metinler ve güncel bağlantılar: `references/hukuki-dayanak.md`.

## Değerlendirme Metodu

Karışıklık ihtimali değerlendirmesi **beş duyu elemanları** üzerinden yapılır: **işitsel (sesçil), görsel, kavramsal** benzerlik + mal/hizmet kapsamının aynı/benzer/ilişkili olması + ayırt edici unsurun ağırlığı. Yargı pratiğinde genel olarak:

1. Markalar bütünüyle değil, **esas (ayırt edici) unsurları** üzerinden karşılaştırılır; zayıf/nitelendirici ibareler (yer adları, ürün nitelendiren ifadeler) tek başına fark yaratmaz.
2. Uzun kelime markalarında 1–3 harf farkı, ortak başlangıç/bitirme harfleri varlığında karışıklığı tek başına engellemeyebilir.
3. Ortalama tüketici algısı esas alınır; bazı mallarda (ilaç, sağlık vb.) dikkat düzeyinin artması, bazılarında azalması değerlendirilir.

> ⚖️ Bu metodoloji somut dosyada avukat tarafından uygulanır; bu skill yalnızca bayrak üretir. Emsaller için `references/hukuki-dayanak.md` §3'e bakınız.

## İş Akışı

### Adım 0 — Kapsam netleştir
Eksikse sor:
- Önerilen marka (kelime/logo/kompozisyon)
- Nice sınıfları ve temel mal/hizmetler
- Hedef pazar (Türkiye mi, ihracat ülkeleri mi)
- Mevcut kullanım durumu (sadece tescil mi, fiili kullanım da mı)

### Adım 1 — Knockout taraması
Aynı işaretin Türkiye'de mevcut tescil/başvurusu var mı?
- **Kaynaklar:** TÜRKPATENT Marka İnceleme sistemi (https://www.turkpatent.gov.tr), WIPO Global Brand Database, kullanıcı sağlayan sicil çıktıları.
- Araç yoksa: "TÜRKPATENT'te [işaret] için tarama yapamadım — sicil çıktısını paylaşın" de; ezberden sicil bilgisi UYDURMA.

### Adım 2 — Benzer işaret taraması (aynı/benzer sınıflarda)
- İşitsel/görsel/kavramsal olarak yakın işaretleri listele; her satıra **hangi duyu elemanında** yaklaştığını not et.
- Her bulguda karışıklık ihtimalini 🟢 düşük / 🟡 tartışmalı / 🔴 yüksek olarak derecelendir.

### Adım 3 — Özel durum bayrakları
- Önceki işaret, ticari kullanımdan doğan hak (SMK m.6/3 bağlamı)
- Tanınmışlık iddiası taşıyan işaretler (m.6/4-5) → farklı sınıflarda dahi bayrakla
- Kişi ismi/ticaret unvanı/telif içeren işaretler (m.6/6)
- Kötüniyet şüphesi (m.6/9)
- Pasif tescil riski tersi: kendi portföyünde 5 yıl kullanılmayan tesciller (m.9 iptal riski)

### Adım 4 — Bayrak listesi çıkışı

```text
🔍 MARKA BENZERLİK ÖN TARAMASI — BAYRAK LİSTESİ (görüş değildir)

Önerilen işaret: [...]
Sınıflar: [...] | Pazar: [...]

🚫 KNOCKOUT: [varsa aynı/işlevsel eş işaretler — kaynağıyla]
⚠️ BENZERLİK BAYRAKLARI:
   - [işaret] — [duyu elemanı] benzerliği: 🔴/🟡 — [kısa gerekçe]
📌 DURUM BAYRAKLARI: [tanınmışlık, kötüniyet, pasif portföy vb.]

⚠️ Reviewer note
- Kaynaklar: [TÜRKPATENT/WIPO taraması ✓ | yapılamadı — sicil çıktısı bekleniyor]
- Bu çıktı benzerlik GÖRÜŞÜ değildir; tam araştırma ve itiraz/tecavüz
  değerlendirmesi Fikri ve Sınai Haklar Mahkemesi/Yargıtay pratiği gerektirir.
```

## Asla Yapılmayacaklar
- Sicil taraması yapılmadan "uygun/temiz" denmez.
- Karar numarası, tescil no, başvuru no uydurulmaz — Yargı PRO bağlıysa teyitli emsal verilir, değilse konu başlığıyla yönelendirilir.
- ABD Lanham Act, *du Pont*, *Polaroid*, *Sleekcraft* gibi common-law testleri Türk dosyasına uygulanmaz; bu sette geçmişleri bilinen bu kalıplar kaldırılmıştır.

## TBB Meslek Kuralları
Çıktılar taslaktır; üçüncü kişilerin işaretlerine ilişkin bulgular müvekkil dışına izinsiz aktarılmaz.
