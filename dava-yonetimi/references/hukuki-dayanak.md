# Hukuki Dayanak — Dava Yönetimi (Litigation)

> Bu dosya `dava-yonetimi` plugin'inin birincil kaynak katmanıdır. Tüm kanun/madde atıfları **Yargı PRO MCP üzerinden mevzuat.gov.tr güncel metninden** teyit edilmiştir (teyit tarihi: 2026-08-25). Disiplin için bkz. kök `references/karar-atif-kurallari.md`.

## 1. Temel Mevzuat

| Kanun | No | Resmî Gazete | Kaynak |
|---|---|---|---|
| Hukuk Muhakemeleri Kanunu | 6100 | 04.02.2011 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=6100&MevzuatTur=1&MevzuatTertip=5) |
| Ceza Muhakemesi Kanunu | 5271 | 17.12.2004 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=5271&MevzuatTur=1&MevzuatTertip=5) |
| Avukatlık Kanunu | 1136 | 07.04.1969 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=1136&MevzuatTur=1&MevzuatTertip=5) |
| Türk Borçlar Kanunu | 6098 | 04.02.2011 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=6098&MevzuatTur=1&MevzuatTertip=5) |
| **Türk Ticaret Kanunu** | **6102** | 14.02.2011 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=6102&MevzuatTur=1&MevzuatTertip=5) |
| Rekabetin Korunması Hakkında Kanun | 4054 | 13.12.1994 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=4054&MevzuatTur=1&MevzuatTertip=5) |
| Vergi Usul Kanunu | 213 | 10.01.1961 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=213&MevzuatTur=1&MevzuatTertip=4) |
| Kişisel Verilerin Korunması Kanunu | 6698 | 07.04.2016 | [mevzuat.gov.tr](https://www.mevzuat.gov.tr/mevzuat?MevzuatNo=6698&MevzuatTur=1&MevzuatTertip=5) |

> ⚠️ **TTK numarası:** Güncel TTK **6102** sayılı kanundur; eski 6762 sayılı TTK yürürlükten kalkmıştır. Skill metinlerindeki "TTK m.18", "TTK m.54" atıfları **yeni kanuna** aittir ve aşağıda madde düzeyinde teyit edilmiştir.

## 2. Doğrulanmış Kritik Hükümler

Aşağıdaki her satır ilgili maddenin güncel metninden özetlenmiştir (`mevzuat_getir` ile çekilmiştir).

### Usul (HMK)

- **m.127 — Cevap dilekçesi süresi:** Davalıya tebligattan itibaren **iki hafta**; çok zor veya imkânsız hâllerde cevap süresinin bitiminden itibaren işleyen, bir defaya mahsus, **bir ayı geçmeyen ek süre**.
- **m.152 — Doğrudan soru:** Duruşmaya katılan **taraf vekilleri** tanığa/bilirkişiye/doğrudan soru yöneltebilir; **taraflar hâkim aracılığıyla** sorar. İtirazda kararı hâkim verir.
- **m.169–173 — İsticvap:** Karar üzerine yapılır; davanın temelini oluşturan vakıalarla sınırlıdır (m.169). Taraf bizzat dinlenir, yazılı not kullanamaz (m.173).
- **m.240 — Tanık gösterme:** Tanıklar listeyle gösterilir; listede olmayan dinlenemez.
- **m.247 vd. — Tanıklıktan çekinme:** Kanunda öngörülen hâllerde (kişisel nedenler m.250, mesleki nedenler dahil) çekinme hakkı; usul m.252. *(Not: Bu başlığın doğru adresi m.247'dir — eski taslaklardaki "m.200" atfı düzeltilmiştir.)*
- **m.220–221 — Belge ibrazı:** İbrazdan kaçınma hâlinde mahkeme, **belgenin içeriği konusunda karşı tarafın beyanını kabul edebilir** (m.220/3). Üçüncü kişinin elindeki belgede ibraz emri verilir (m.221).
- **m.400–405 — Delil tespiti:** Henüz gelmemiş veya açılacak dava için keşif/bilirkişi/tanık tespiti talep edilebilir (m.400); henüz dava açılmamışsa görevli/yetkili mahkeme düzenlenir (m.401); talep dilekçeyle (m.402); acele hâllerde karşı tarafa tebliğ yapılmaksızın da yapılabilir, kararına bir hafta içinde itiraz edilebilir (m.403); tespit dosyası asıl davaya **ek** sayılır (m.405).
- **m.320/2 — İlk duruşma:** Dava şartları ve **ilk itirazlar** ile **hak düşürücü süre ve zamanaşımı** hakkında taraflar ayrıca dinlenilir → zamanaşımı def'i, ilk itiraz kategorisinde değildir; sonradan (cevapta/ıslah yoluyla) ileri sürülebilir.

### Meslek hukuku (Av.K.)

- **m.36 — Sır saklama yükümlülüğü.** *(Madde metni teyidi: kök disiplin dosyasındaki uyarı gereği Av.K. m.36 ile TBB MK maddeleri karıştırılmaz.)*
- **m.38 — İşin reddi zorunluluğu:** Menfaati zıt tarafa avukatlık etmiş olma dahil altı zorunlu red hâli.
- **m.55 — Reklam yasağı:** İş elde etmek için reklam sayılabilecek her türlü teşebbüs yasaktır; esaslar TBB'nin düzenlemesine bırakılmıştır (bkz. TBB Reklam Yasağı Yönetmeliği — ayrı düzenleme). Kınama cezası: m.135/1-a.

### Ceza usulü (CMK)

- **m.130 — Avukat bürosunda arama/elkoyma:** Ancak mahkeme kararıyla, savcı denetiminde; müvekkil ilişkisine ait olduğunun öne sürülmesi hâlinde mühürleme ve **24 saat içinde** hâkim kararı.
- **m.201 — Doğrudan soru yöneltme:** Savcı, müdafi/vekil avukat sanığa, katılana, tanığa, bilirkişiye doğrudan soru sorabilir.
- **m.332 — Bilgi isteme:** Soruşturma/kovuşturmada yazılı istenen bilgilere **on gün içinde** cevap verilmesi zorunludur.

### Maddi hukuk ve kurum talepleri

- **TBK m.49 — Haksız fiil:** Kusurlu ve hukuka aykırı fiille zarar veren gidermekle yükümlüdür.
- **TBK m.179 — Ceza sözleşmesi (cezai şart):** İfa edilmeme hâli için kararlaştırılan cezada alacaklı ya borcu ya cezayı seçebilir.
- **TTK m.18 — Basiretli tacir:** Ticaretine ait bütün faaliyetlerinde basiretli iş adamı gibi hareket zorunluluğu; **m.18/3:** tacirler arası temerrüt/fesih/dönme ihbarları noter, taahhütlü mektup, telgraf veya **KEP** ile yapılır.
- **TTK m.54 — Haksız rekabet:** Aldatıcı veya dürüstlük kuralına aykırı ticari uygulamalar haksız ve hukuka aykırıdır (hâlleri m.55).
- **RKHK m.14 — Bilgi isteme:** Rekabet Kurulu gerekli gördüğü her türlü bilgiyi teşebbüslerden isteyebilir; belirlediği süre içinde verilmesi zorunludur.
- **VUK m.148 — Bilgi verme:** Kamu idareleri, mükellefler ve muameledeki kişiler vergi incelemesi yapmaya yetkililerin istediği bilgileri vermeye mecburdur.
- **KVKK m.5/2-e:** Bir hakkın tesisi, kullanılması veya korunması için veri işlemenin zorunlu olması (açık rıza aranmaz) — muhafaza talimatlarının KVKK zemini. **KVKK m.7:** İşleme sebebi ortadan kalkan veriler silinir/yok edilir/anonim hâle getirilir — uyuşmazlık nedeniyle bu sürecin durdurulması muhafaza talimatının konusudur. **KVKK m.28:** Yargı makamlarınca soruşturma/kovuşturma/yargılama işlemleri kapsamında işlenen verilerde Kanun uygulanmaz (m.28/1-d) — müzekkere yanıtında denge değerlendirmesi.

### Ceza riski

- **TCK m.281 — Suç delillerini yok etme, gizleme veya değiştirme:** Gerçeğin meydana çıkmasını engellemek amacıyla suç delillerini yok eden/silen/gizleyen/değiştiren/bozan kişi 6 ay–5 yıl hapis; kendi işlediği suça ilişkin delil için ceza verilmez (m.281/1 sonu).

## 3. Temel İçtihat (Bedesten bağlantılı)

- **Yargıtay HGK, E.2016/604 K.2020/500, 01.07.2020** — [Tam metin](https://mevzuat.adalet.gov.tr/ictihat/607595200)
  Taraflarca getirilme ilkesi (HMK m.25) ve ispat yükü (m.190): işverenin tutmadığı kayıtlar ispat külfetini değiştirmez; resen delil toplama aykırıdır. *(İspat genel çerçevesi için `is-hukuku/references/hukuki-dayanak.md` §2.3 ile aynı karardır.)*
- **Yargıtay 9. HD, E.2012/10284 K.2013/14562, 15.05.2013** — [Tam metin](https://mevzuat.adalet.gov.tr/ictihat/442352600)
  Zamanaşımı def'inin usulüne uygun ileri sürülmesi (cevap dilekçesinde; ilke karara göre cevabın ıslahı yoluyla da mümkün); mahkemenen def'i dikkate almaması bozma nedeni. *(HUMK→HMK geçiş dönemi kararıdır; HMK döneminde zamanaşımı def'i ilk itiraz sayılmadığından sonradan ileri sürülebilirliği yukarıdaki m.320/2 çerçevesiyle birlikte okuyun.)*

## 4. Teyit Kuyruğu (sonraki geçişte madde düzeyinde teyit edilecek)

- TBK m.19, m.27, m.28, m.66, m.77 vd., m.112, m.117 vd. (claim-chart unsurları kanun düzeyinde teyitli, madde düzeyi teyit kuyruğunda)
- 7201 sayılı Tebligat Kanunu ve UETS mevzuatı (docket-watcher süre mantığı)
- privilege-log-review'da anılan Kurul kararları (Dow, Enerjisa vb.) — numarasız anıldığından acil değil; somut numara gerekirse `kurum_karari_ara` ile bulunacaktır

## 5. Teyit Yöntemi

2026-08-25: `mevzuat_ara` (kanun düzeyi) → `mevzuat_icinde_ara` / `mevzuat_getir(madde)` (madde düzeyi) → `semantik_ictihat_ara` (emsal). Numara ezberden yazılmaz; bu dosya dışında spesifik numara üretilecekse aynı zincir izlenir.
