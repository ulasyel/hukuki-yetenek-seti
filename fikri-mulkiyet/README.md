# Legal Turkish - Fikri Mülkiyet (IP) Plugin

Fikri ve Sınai Mülkiyet Hukuku pratiği: Marka, telif hakkı (FSEK), patent, ticari sır ve açık kaynak (OSS). Uyar-Kaldır (FSEK Ek Madde 4 kapsamında) ve tecavüzün men'i ihtarnameleri (gönderme ve cevaplama) hazırlar veya ön incelemesini yapar, marka ön araştırması (clearance) ve faaliyet serbestisi (FTO) incelemesi yürütür, sözleşmelerdeki IP maddelerini inceler, tescil ve yenileme sürelerini izler ve açık kaynak lisans uyumluluğunu kontrol eder. 

Sistem bir cold-start mülakatı ile sizin veya şirketinizin ihlal stratejisi, portföyü ve onay mekanizması etrafında şekillenir — genel geçer değil, *size özel* bir pratik profili öğrenir.

**Her çıktı, avukat incelemesi için hazırlanmış bir taslaktır — kaynaklı, etiketli ve onaya tabidir — nihai hukuki bir sonuç (hüküm) değildir.** Plugin (eklenti) evrakları okur, senaryonuzu uygular, sorunları tespit eder ve bilgi notunu yazar. Ancak bir avukat inceler, doğrular ve karar verir. Harekete geçirici işlemler (başvuru yapma, ihtarname gönderme vb.) açık bir avukat onayına tabi kılınmıştır.

## Kimler İçin Uygun?

| Rol | Temel İş Akışları |
|---|---|
| **Kurum İçi IP Müşaviri** | İhlal/tecavüz kararları, sözleşme maddesi incelemesi, portföy gözetimi, FTO ön incelemesi |
| **Marka/Patent Uzmanı** | Portföy ve yenileme/itiraz süresi takibi, marka ön araştırması, ihlal bildirimleri |
| **Marka Koruma Yöneticisi** | İhtarnameler, Uyar-Kaldır (FSEK) süreçleri, izleme (watch) hizmeti takibi |
| **IP / Fikri Mülkiyet Avukatı** | Müvekkil bazlı çalışma alanları, ihtarname, ihlal değerlemesi, portföy muhafazası (İstem yazımı HARİÇ) |
| **Hukuk Operasyonları (Legal Ops)** | Tescil izleme, marka/patent/Tasarım yenileme süreleri, sözleşme IP yönetimi |

Bu plugin **kesinlikle patent istemi (claim) yazmaz**. Patent yazımı, uzmanlık gerektiren bir alandır ve genel amaçlı bir araca bırakılmamalıdır. Buradaki patent çalışması; FTO araştırması (ürünümüz üçüncü şahıs patentiyle çakışıyor mu?), sözleşmelerdeki patent maddelerinin incelenmesi ve portföy takibi ile sınırlıdır.

## İlk Çalıştırma: Cold-start (Başlangıç) Mülakatı

İlk kullanımda, plugin sizinle kısa bir görüşme (mülakat) yapar. Hangi IP alanlarında çalıştığınızı (marka, telif, vb.), yargı yetki alanınızı (Türkiye/WIPO), ihlallere karşı tutumunuzu (agresif/muhafazakar) ve çalışma senaryolarınızı sorar. 

Öğrendiklerini ~/.claude/plugins/config/hukuki-yetenek-seti/fikri-mulkiyet/CLAUDE.md profili altına yazar. Bu, her bir skill'in işleme başlamadan önce okuduğu Türkiye odaklı çalışma şablonunuzdur.

## Komutlar

| Komut | İşlev |
|---|---|
| /fikri-mulkiyet:kurulum-mulakati | Başlangıç mülakatını çalıştırır |
| /fikri-mulkiyet:ip-ihtarnamesi [bağlam] | Tecavüzün Ment'i (Cease-and-desist) İhtarnamesi hazırlar veya inceler |
| /fikri-mulkiyet:uyar-kaldirir [bağlam] | FSEK Ek Madde 4 (Uyar-Kaldır) bildirimi / İhlal bildirimine cevap |
| /fikri-mulkiyet:benzerlik-taramasi [marka] | Marka Ön Araştırması — Tescil edilebilirliğe ilişkin riskler (MUTB vb.) |
| /fikri-mulkiyet:engel-taramasi [ürün/kapsam] | Faaliyet Serbestisi (FTO) incelemesi |
| /fikri-mulkiyet:bulus-girdisi [buluş] | Buluş bildirim formu ilk aşama kontrolü (Yenilik, buluş basamağı, tescil iptali vs.) |
| /fikri-mulkiyet:tecavuz-triyaji [bağlam] | Fikri ve Sınai hak tecavüzünü değerlendirir (İhlal var mı, dava/ihtar stratejisi nedir?) |
| /fikri-mulkiyet:fikri-maddeler-inceleme [dosya] | Sözleşmelerdeki (Örn. hizmet, lisans) IP (mali/manevi hak devri) maddelerinin incelenmesi |
| /fikri-mulkiyet:acik-kaynak-inceleme [repo/dosya] | Açık kaynak lisans uyumluluk kontrolü |
| /fikri-mulkiyet:portfoy-takip | Tescil (TÜRKPATENT/WIPO vb.) ve yenileme/itiraz takip durum göstergesi |
| /fikri-mulkiyet:dosya-alani | Müvekkil/dosya bazlı özel çalışma alanları yaratma (Dış bürolar için) |

## Bağlantılar (Connectors) ve Doğrulama
Plugin mevzuat analizini Türkiye ve uluslararası arama sağlayıcıları üzerinden doğrular veya ek kontrol uyarısı koyar (Lexpera veya UYAP kararları ile manuel de yürütülebilir).