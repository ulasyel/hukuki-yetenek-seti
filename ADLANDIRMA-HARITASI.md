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

### commercial-legal → `ticari-sozlesmeler` (2026-08-25)

| Eski skill | Yeni skill |
|---|---|
| amendment-history | tadil-gecmisi |
| cold-start-interview | kurulum-mulakati |
| customize | ozellestir |
| escalation-flagger | eskalasyon-yonlendirme |
| matter-workspace | dosya-alani |
| nda-review | gizlilik-sozlesme-inceleme |
| renewal-tracker | yenileme-takip |
| review | inceleme |
| review-proposals | playbook-oneri-inceleme |
| saas-msa-review | saas-abonelik-inceleme |
| stakeholder-summary | paydas-ozeti |
| vendor-agreement-review | tedarikci-sozlesme-inceleme |

Agent'lar: `deal-debrief.md` → `imza-degerlendirme.md` · `playbook-monitor.md` → `playbook-izleyici.md` · `renewal-watcher.md` → `yenileme-gozlemci.md`

**Bu turda hukuki düzeltme:** Tüm skill/agent'larda "TBK m.179-185" ibaresi **TBK m.179-182** olarak düzeltildi (ceza sözleşmesi bölümü m.182'de biter; m.183+ alacağın devri). Ayrıca QUICKSTART ve adaptasyon rehberi içindeki komut örnekleri güncellendi.

### corporate-legal → `sirketler-hukuku` (2026-08-25)

| Eski skill | Yeni skill |
|---|---|
| ai-tool-handoff | ai-arac-devri |
| board-minutes | yonetim-kurulu-tutanagi |
| closing-checklist | kapanis-checklist |
| cold-start-interview | kurulum-mulakati |
| customize | ozellestir |
| deal-team-summary | islem-brifingi |
| diligence-issue-extraction | durum-tespiti-bulgu-cikarimi |
| entity-compliance | kurumsal-kayit-takip |
| integration-management | entegrasyon-yonetimi |
| material-contract-schedule | onemli-sozlesmeler-eki |
| matter-workspace | dosya-alani |
| tabular-review | tablo-inceleme |
| written-consent | toplantisz-karar |

Agent: `dataroom-watcher.md` → `veri-oda-gozlemci.md`

**Bu turda hukuki düzeltme:** material-contract-schedule'daki "hisse devri (TTK m.495)" atfı **TTK m.487 vd.** olarak düzeltildi (m.495 borsada kote paylarda iktisap üst sınırı hükmüdür). managed-agent-cookbooks ve CONNECTORS.md içindeki yol/komut referansları güncellendi.

### product-legal → `urun-hukuku` (2026-08-25)

| Eski skill | Yeni skill |
|---|---|
| cold-start-interview | kurulum-mulakati |
| customize | ozellestir |
| feature-risk-assessment | ozellik-risk-degerlendirme |
| is-this-a-problem | sorun-triyaji |
| launch-review | lansman-inceleme |
| marketing-claims-review | reklam-iddia-inceleme |
| matter-workspace | dosya-alani |

Agent: `launch-watcher.md` → `lansman-gozlemci.md`. Ayrıca managed-agent-cookbooks/launch-radar referansları güncellendi.


### ip-legal -> fikri-mulkiyet (2026-08-25)

| Eski skill | Yeni skill |
|---|---|
| cease-desist | ip-ihtarnamesi |
| clearance | benzerlik-taramasi |
| cold-start-interview | kurulum-mulakati |
| customize | ozellestir |
| fto-triage | engel-taramasi |
| infringement-triage | tecavuz-triyaji |
| invention-intake | bulus-girdisi |
| ip-clause-review | fikri-maddeler-inceleme |
| matter-workspace | dosya-alani |
| oss-review | acik-kaynak-inceleme |
| portfolio | portfoy-takip |
| takedown | uyar-kaldirir |

Agent: ip-renewal-watcher.md -> ip-yenileme-gozlemci.md

Bu turda: clearance SKILL.md ve takedown SKILL.md tamamen yeniden yazildi (uydurma emsal *Sleekcraft* kalintisi ve DMCA 512 iskeleti silindi; SMK m.6/9/29 + FSEK Ek Madde 4/3 + 5651 m.4 dogrulanmis metinlerle). fto-triage, infringement-triage, ip-clause-review, oss-review, cease-desist ve ip-renewal-watcher icindeki USC/Westlaw/CourtListener/TESS kalintilari temizlendi.

### ai-governance-legal -> yz-yonetisim (2026-08-25)

| Eski skill | Yeni skill |
|---|---|
| cold-start-interview | kurulum-mulakati |
| customize | ozellestir |
| use-case-triage | kullanim-triyaji |
| aia-generation | etki-degerlendirme |
| vendor-ai-review | tedarikci-yz-inceleme |
| reg-gap-analysis | duzenleme-uyum-analizi |
| policy-monitor | politika-fark-takibi |
| policy-starter | politika-taslagi |
| ai-inventory | yz-envanteri |
| matter-workspace | dosya-alani |

Bu turda: "EU AI Act (ve Türkiye uyumu)" string artefakti temizlendi (-> AB Yapay Zeka Yasasi), Westlaw/CourtListener etiketleri Yargi PRO'ya cevrildi, FLSA ornegi notrallesti, dayanak katmani eklendi. US ornekleri (Colorado/BIPA/NYC) bu baslangic uyarlama plugininde kismen kalmistir - ikinci faz kapsaminda derinlestirilecektir.

## Bekleyen Plugin'ler

Yok - tum plugin turlari tamamlandi (2026-08-25).