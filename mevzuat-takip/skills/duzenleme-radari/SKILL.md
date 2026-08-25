---
name: duzenleme-radari
description: Türkiye odaklı düzenleyici kaynakları kontrol eder, yeni gelişmeleri önem eşiğine göre sınıflandırır ve aksiyon gerektirenleri policy-diff / comments / gaps akışına devreder. Kullanım: "regulatory update", "kaynakları kontrol et", "Resmi Gazete'de ne var", "KVKK/SPK/BDDK gündemi".
argument-hint: "[opsiyonel: --since YYYY-MM-DD]"
---

# /duzenleme-radari

1. `~/.claude/plugins/config/hukuki-yetenek-seti/mevzuat-takip/CLAUDE.md` dosyasını oku: izlenen kurumlar, önem eşiği, kaynaklar, çıktı yolu.
2. `references/source-catalog.md` kataloğuyla kapsam boşluklarını kontrol et.
3. Yapılandırılmış kaynakları tara veya kullanıcı metnini tekil gelişme olarak işle.
4. Çıktıyı önem seviyesine göre ver; kaynak etiketlerini ve doğrulama uyarılarını koru.

## Amaç

Regülasyon akışını gürültü olmaktan çıkarıp hukuk/compliance ekibinin gerçekten bakması gereken gelişmeleri görünür kılmak. Birincil kaynak önceliklidir: Resmi Gazete, Mevzuat Bilgi Sistemi ve ilgili kurumun kendi sayfası.

## Kapsam Kontrolü

Taramadan önce izleme listesi ile kaynak kataloğunu karşılaştır:

- İzlenen alanlar hangi Türkiye kurumlarını gerektiriyor? Örn. KVKK, Rekabet Kurumu, SPK, BDDK, BTK, EPDK, TCMB, Ticaret Bakanlığı, MASAK, TİTCK.
- Bu kurumlar için yapılandırılmış kaynak, sayfa izleme veya manuel yol var mı?
- Resmi Gazete ve Mevzuat açık değilse bunu üstte belirt; bunlar Türkiye'de bağlayıcı metinlerin ana doğrulama katmanıdır.

Kapsam boşluğu tek seferlik ve somut yazılır:

> **Kapsam boşluğu:** İzleme listesinde `[kurum/alan]` var, fakat yapılandırılmış kaynak yok. Katalogda önerilen başlangıç kaynakları: `[kaynak 1]`, `[kaynak 2]`. Eklemek için `/mevzuat-takip:kurulum-mulakati --redo` ya da `/mevzuat-takip:ozellestir` kullanın.

## Kaynak Çekme

Her kaynak için kullanılan yolu açıkça etiketle:

- `[Resmi Gazete]` bağlayıcı düzenlemeler, Cumhurbaşkanı kararları, yönetmelik/tebliğler.
- `[Mevzuat]` yürürlükteki metin ve güncel konsolidasyon kontrolü.
- `[KVKK]`, `[Rekabet]`, `[SPK]`, `[BDDK]`, `[BTK]`, `[EPDK]`, `[TCMB]`, `[Ticaret Bakanlığı]` gibi kurum sayfaları.
- `[ikincil kaynak]` hukuk bürosu bülteni, haber, newsletter, veri tabanı özeti.
- `[web search - verify]`, `[model knowledge - verify]`, `[user provided]` düşük güven kaynakları.

İkincil kaynak, tek başına bağlayıcı gelişme olarak sınıflandırılmaz. İlgili birincil kaynak bulunamıyorsa sonuç "doğrulama gerekli" olarak kalır.

**Sessiz tamamlayıcı yok.** Kaynak taraması az sonuç döndürürse model bilgisinden boşluk doldurma. Şunu söyle:

> Kaynak taraması `[N]` sonuç verdi. `[kurum/alan]` için kapsam zayıf görünüyor. Seçenekler: (1) tarih aralığını genişlet, (2) başka kaynak ekle, (3) web araması yap ve sonuçları `[web search - verify]` etiketiyle getir, (4) burada dur.

## Sınıflandırma

| Gelişme tipi | Varsayılan önem |
|---|---|
| Resmi Gazete'de yayımlanmış kanun, yönetmelik, tebliğ, karar | Genelde **maddi / aksiyon gerekli** |
| Mevzuat metninde yürürlük değişikliği | Maddi; yürürlük ve geçiş tarihi doğrulanır |
| Kurul kararı, idari yaptırım, ihlal kararı | Sektör/uygulama eşleşirse maddi; aksi halde incelemeye değer |
| Taslak düzenleme, kamuoyu görüşü, duyuru edilen görüş süreci | İncelemeye değer; comments tracker'a gider |
| Rehber, ilke kararı, sıkça sorulan sorular | İncelemeye değer; bağlayıcılık derecesi belirtilir |
| Basın açıklaması, konuşma, istatistik, eğitim duyurusu | FYI veya atla |
| İkincil kaynak uyarısı | Birincil kaynak bulunana kadar doğrulama gerekli |

Taslak/görüş aşaması uyum boşluğu değildir. Comment/görüş kararı üretir; policy-diff sadece "ön konumlanma" analizi yapar.

## Zenginleştirme

FYI üstündeki her kalem için:

- Tek cümlelik değişiklik özeti.
- Neden önemli olduğu.
- Kaynak linki ve kaynak etiketi.
- Yürürlük tarihi, geçiş süresi, görüş son tarihi veya belirsizlik.
- Olası el değişimi: policy-diff, comments veya gaps.

## Çıktı

```markdown
[ROLE-BASED LEGAL REVIEW HEADER - CLAUDE.md ## Outputs]

## Türkiye Regülasyon Taraması - [tarih]

**Dönem:** [son kontrol] - [şimdi]
**Kontrol edilen kaynaklar:** [liste]
**Bulunan kalem:** [N]

### Kısa sonuç

[Aksiyon gerektiren N konu; en kritik 1-3 başlık]

### Maddi / Aksiyon Gerekli

**[Kurum] - [Başlık]** `[kaynak etiketi]`
[Tek cümle özet]. [Neden ilgili]. Yürürlük/geçiş: [tarih].
[Link]
-> Öneri: `/mevzuat-takip:politika-karsilastirma` ile [muhtemel politika] karşılaştırılsın.

### İncelemeye Değer

**[Kurum] - [Başlık]** `[kaynak etiketi]`
[Tek cümle]. [Görüş son tarihi / takip notu].

### FYI

[N] kalem - başlık ve link listesi.

---

**Görüş/taslak takip:** [N] açık karar - `/mevzuat-takip:gorus-sureleri`
**Açık gap:** [N] - `/mevzuat-takip:acik-gapler`

**Kaynak doğrulama:** Bu çıktı bir çalışma taslağıdır. Bağlayıcı işlem yapmadan önce Resmi Gazete, Mevzuat Bilgi Sistemi veya ilgili kurumun resmi sayfasından metin, yürürlük tarihi ve güncellik doğrulanmalıdır.
```

## Konfigürasyon Eksikleri

- İzleme listesi boşsa dur ve bunu açıkça söyle.
- Önem eşiği yoksa varsayılan tabloyu kullan ve bunun varsayılan olduğunu belirt.
- Kaynaklar boşsa sadece manuel giriş + Resmi Gazete/Mevzuat doğrulama önerisiyle çalış; hayali kaynak varsayma.

## Devir

- Bağlayıcı ve politika etkili kalem -> `/mevzuat-takip:politika-karsilastirma`
- Taslak veya kamuoyu görüşü -> `/mevzuat-takip:gorus-sureleri`
- Diff sonucu boşluk bulursa -> `/mevzuat-takip:acik-gapler`

## Yapmadıkları

- Bağlayıcı hukuki görüş vermez.
- İkincil kaynaklardan kesin uyum yükümlülüğü çıkarmaz.
- Kullanıcının önem eşiğini kendiliğinden değiştirmez.
