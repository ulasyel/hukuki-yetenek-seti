# Adlandırma Haritası (Eski → Yeni)

Plugin ve skill adlarının Türkçeleştirilmesini izler. Her plugin kendi değerlendirme turunda taşınır; eski adlar hiçbir yerde komut olarak kullanılmaz. Klasörlerde ASCII-güvenli isimler kullanılır (ı→i, ş→s, ğ→g, ü→u, ö→o, ç→c).

## Tamamlanan Plugin'ler

### employment-legal → `is-hukuku` (2026-08-25)

| Eski skill | Yeni skill |
|---|---|
| cold-start-interview | kurulum-mulakati |
| customize | ozellestir |
| expansion-kickoff | genisleme-baslangic |
| expansion-update | genisleme-guncelleme |
| handbook-updates | yonetmelik-degisikligi |
| hiring-review | ise-alim-incleme |
| internal-investigation | ic-sorusturma |
| international-expansion | uluslararasi-genisleme |
| investigation-add | sorusturma-belge-ekle |
| investigation-memo | sorusturma-notu |
| investigation-open | sorusturma-ac |
| investigation-query | sorusturma-sorgu |
| investigation-summary | sorusturma-ozeti |
| leave-tracker | izin-takip |
| log-leave | izin-kayit |
| matter-workspace | dosya-alani |
| policy-drafting | politika-taslagi |
| termination-review | fesih-incleme |
| wage-hour-qa | ucret-mesai-sss |
| worker-classification | calisma-iliskisi |

Agent: `agents/leave-tracker.md` → `agents/izin-takip.md`

Ayrıca tüm plugin içinde: `claude-for-legal` → `hukuki-yetenek-seti` (yapılandırma yolları).

### litigation-legal → `dava-yonetimi` (2026-08-25)

| Eski skill | Yeni skill |
|---|---|
| brief-section-drafter | dilekce-bolumu-taslagi |
| chronology | kronoloji |
| claim-chart | dava-unsur-tablosu |
| cold-start-interview | kurulum-mulakati |
| customize | ozellestir |
| demand-draft | ihtarname-hazirla |
| demand-intake | ihtarname-girdisi |
| demand-received | gelen-ihtarname-triyaji |
| deposition-prep | isticvap-tanik-hazirlik |
| legal-hold | delil-muhafaza |
| matter-briefing | dosya-brifingi |
| matter-close | dosya-kapatma |
| matter-intake | dosya-acilis |
| matter-update | dosya-guncelleme |
| matter-workspace | dosya-alani |
| oc-status | dis-buro-durum |
| portfolio-status | portfoy-durum |
| privilege-log-review | gizlilik-kutugu-inceleme |
| subpoena-triage | muzekkere-triyaji |

Agent: `agents/docket-watcher.md` → `agents/uyap-takip.md`

Ayrıca: `claude-for-legal` → `hukuki-yetenek-seti`; ip-legal `infringement-triage` ve QUICKSTART içindeki çapraz komutlar yeni adlara bağlandı.

### privacy-legal → `kvkk-uyum` (2026-08-25)

| Eski skill | Yeni skill |
|---|---|
| cold-start-interview | kurulum-mulakati |
| customize | ozellestir |
| dpa-review | veri-isleyen-sozlesme |
| dsar-response | ilgili-kisi-basvurusu |
| matter-workspace | dosya-alani |
| pia-generation | vked-taslagi |
| policy-monitor | politika-fark-takibi |
| reg-gap-analysis | duzenleme-uyum-analizi |
| use-case-triage | kullanim-triyaji |

Ayrıca: product-legal ve ai-governance-legal içindeki `/privacy-legal:*` çapraz komutları yeni adlara bağlandı.

## Bekleyen Plugin'ler

commercial-legal, corporate-legal, litigation-legal, privacy-legal, product-legal, regulatory-legal, ip-legal, ai-governance-legal — ilgili turlarda bu tabloya eklenecek.
