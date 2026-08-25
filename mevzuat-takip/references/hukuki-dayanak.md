# Hukuki Dayanak — Regülasyon İzleme

> Bu dosya `mevzuat-takip` plugin'inin birincil kaynak katmanıdır (teyit tarihi: 2026-08-25). Bu plugin hukuki analizden çok **izleme akışı** ürettiğinden dayanak katmanı iki bölümden oluşur: (1) yetkili resmî kaynaklar, (2) Yargı PRO üzerinden karar erişimi.

## 1. Yetkili Kaynaklar

Kurum adresleri ve izleme mantığı `skills/duzenleme-radari/references/source-catalog.md` içinde tutulur: Resmî Gazete (`resmigazete.gov.tr`), Mevzuat Bilgi Sistemi (`mevzuat.gov.tr`), KVKK, Rekabet Kurumu, SPK (+ Bülten), BDDK, BTK, EPDK, TCMB, MASAK, Ticaret Bakanlığı (Reklam Kurulu bültenleri), TİTCK, SGK/İŞKUR.

**Kaynak önceliği:** Birincil kaynak = RG/kurum sitesi; ikincil kaynak (haber/bülten özeti) yalnızca birincile yönlendirme amaçlıdır ve `[ikincil — birincilden teyit et]` etiketi taşır.

## 2. Yargı PRO ile Karar Erişimi

Aşağıdaki kurumların kararlarına Yargı PRO MCP üzerinden erişilir; herhangi bir karar numarası çıktıya girecekse o anda teyit edilir:

| Kurum | Yargı PRO aracı |
|---|---|
| KVKK Kurul kararları | `kurum_karari_ara(kurum:"kvkk")` |
| Rekabet Kurumu | `kurum_karari_ara(kurum:"rekabet")` |
| SPK ilke kararları/rehberler/bültenler | `kurum_karari_ara(kurum:"spk")` |
| BDDK | `kurum_karari_ara(kurum:"bddk")` |
| BTK | `kurum_karari_ara(kurum:"btk")` |
| EPDK | `kurum_karari_ara(kurum:"epdk")` |
| GİB özelgeleri / Reklam Kurulu bültenleri / KİK / Sayıştay / Uyuşmazlık Mahkemesi / KDK / TBB Disiplin / HSK | ilgili `kurum` değeriyle |

Mevzuat metni ve madde düzeyi kontrol: `mevzuat_ara` → `mevzuat_getir`. Günlük RG fihristi: Yargı PRO Resmî Gazete araçları.

## 3. Teyit Kuyruğu

- Kurum URL adreslerinin periyodik canlı kontrolü (adres değişiklikleri source-catalog'a işlenir)
- Kamuoyu görüşüne açılan taslak sürelerinin kurum bazlı envanteri

Son güncelleme: 2026-08-25
