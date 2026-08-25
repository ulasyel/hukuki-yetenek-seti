# Employment Legal Plugin - Legal Turkish

Bu klasör, iş hukuku ve insan kaynakları iş akışlarını Türk hukuku ve uygulamasına göre yürütür. Amaç yabancı employment şablonunu çevirmek değil; işe alım, iş sözleşmesi, ücret/çalışma süresi, izin, fesih, iç soruşturma, işyeri politikaları, SGK/İŞKUR/İSG ve zorunlu arabuluculuk akışlarını Türkiye pratiğinde yeniden kurmaktır.

Her çıktı hukukçu incelemesine tabi taslaktır. Skill'ler belge okur, risk kapılarını uygular, kontrol listesi ve taslak üretir; nihai karar, fesih, imza, resmi bildirim, arabuluculuk/dava stratejisi ve çalışanla paylaşılacak metin insan onayından geçer.

## Kimler İçin

| Rol | Ana iş akışları |
|---|---|
| İş hukuku avukatı / hukuk müşaviri | Fesih incelemesi, işçilik alacağı, politika, iç soruşturma, arabuluculuk hazırlığı |
| İnsan kaynakları | İşe alım kontrolü, izin takibi, disiplin süreci, çalışan talepleri |
| Yönetim / GC | Toplu işten çıkarma, üst düzey fesih, yüksek riskli uyuşmazlık ve regülatör konuları |

## İlk Kurulum

```text
/is-hukuku:kurulum-mulakati
```

Kurulum; işyeri, çalışan grupları, SGK/İŞKUR/İSG kapsamı, sendika/TİS, ücret ve çalışma süresi, izin, fesih, iç soruşturma, KVKK ve eskalasyon kurallarını çıkarır. Yapılandırma şu kalıcı yola yazılır:

```text
~/.claude/plugins/config/hukuki-yetenek-seti/is-hukuku/CLAUDE.md
```

## Skill'ler

| Skill | İşlev |
|---|---|
| `/is-hukuku:kurulum-mulakati` | Türk iş hukuku practice profilini kurar |
| `/is-hukuku:ise-alim-incleme` | İş teklifi, iş sözleşmesi, deneme süresi, SGK ve KVKK kontrolleri |
| `/is-hukuku:fesih-incleme` | Fesih, savunma, iş güvencesi, ihbar/kıdem, SGK çıkış kodu ve arabuluculuk kontrolü |
| `/is-hukuku:ucret-mesai-sss` | Ücret, fazla çalışma, UBGT, hafta tatili, prim, bordro ve çalışma süresi soruları |
| `/is-hukuku:calisma-iliskisi` | İşçi/bağımsız çalışan/alt işveren/geçici iş ilişkisi sınıflandırması |
| `/is-hukuku:politika-taslagi` | İşyeri politikası ve prosedür taslağı |
| `/is-hukuku:yonetmelik-degisikligi` | Personel yönetmeliği ve politika değişikliği fark analizi |
| `/is-hukuku:izin-takip` | Yıllık izin, rapor, doğum, ücretsiz izin ve kritik tarihleri izler |
| `/is-hukuku:izin-kayit` | İzin/rapor kaydı ekler |
| `/is-hukuku:sorusturma-ac` | İç soruşturma dosyası açar |
| `/is-hukuku:sorusturma-belge-ekle` | Soruşturma kaydına belge/görüşme/not ekler |
| `/is-hukuku:sorusturma-sorgu` | Soruşturma kaydı içinde kontrollü soru-cevap yapar |
| `/is-hukuku:sorusturma-notu` | İç soruşturma değerlendirme notu üretir |
| `/is-hukuku:sorusturma-ozeti` | Yönetim/İK/hukuk hedef kitlesine göre özet üretir |
| `/is-hukuku:ic-sorusturma` | İç soruşturma ana playbook'u |
| `/is-hukuku:uluslararasi-genisleme` | Türkiye'de veya Türkiye dışı çalışan istihdamında genişleme planı |
| `/is-hukuku:genisleme-baslangic` | Yeni ülke/şehir/çalışma modeli genişleme dosyası başlatır |
| `/is-hukuku:genisleme-guncelleme` | Genişleme tracker'ını günceller |
| `/is-hukuku:ozellestir` | Profilde tekil iş hukuku ayarı değiştirir |
| `/is-hukuku:dosya-alani` | Çok dosyalı/müvekkilli iş hukuku matter ayrımını yönetir |

## Takip Ajanı

| Agent | İzlediği konu | Varsayılan ritim |
|---|---|---|
| `leave-tracker` | Açık izin/rapor dosyaları, dönüş tarihi, rapor/analık/ücretsiz izin, iş göremezlik ve kritik aksiyonlar | Haftalık kontrol |

## Kaynak Disiplini

İş hukuku rakamları ve süreleri değişebilir. Asgari ücret, kıdem tazminatı tavanı, SGK bildirimi, idari para cezaları, arabuluculuk ve İSG yükümlülükleri için güncel resmi kaynak kontrolü gerekir. Kaynak önceliği: Mevzuat.gov.tr, Resmi Gazete, Çalışma ve Sosyal Güvenlik Bakanlığı, SGK, İŞKUR, Arabuluculuk Daire Başkanlığı, Yargıtay/AYM/UYAP, Lexpera/Lextera/Kazancı ve kullanıcı belgeleri.
