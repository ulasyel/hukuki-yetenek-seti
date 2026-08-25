# Connector Ekleme

Plugin'ler yetkili kaynaklara bağlandığında en iyi şekilde çalışır. Hukuki veri kaynağı, araştırma aracı, CLM, DMS, e-keşif platformu veya uygulama yönetim sistemi geliştiriyorsanız/işletiyorsanız, MCP connector'unuzu bu sete eklemenizi isteriz.

## İyi bir hukuk MCP connector'u nasıl olmalı

- **HTTPS üzerinden uzak MCP sunucusu** — OAuth veya API-key kimlik doğrulaması (streamable HTTP veya SSE transport)
- **Okuma ağırlıklı araçlar** — arama, getirme, listeleme. Yazma araçları (oluşturma, gönderme, dosyalama) istemci tarafında açık onay adımı gerektirir; bunu araç açıklamalarında belirtin.
- **Sonuçlarda provenance** — kaynak, çekilme tarihi ve atıfa hazır tanımlayıcı döndürün. Plugin'ler her atıfı kaynağıyla etiketler; connector'ınız bunu mümkün kılmalıdır.
- **Sonuçlarda talimat benzeri içerik yok** — plugin'ler alınan içeriği veri olarak görür, komut olarak değil. Araç sonuçlarınız meta veri/sistem notu içeriyorsa, gömülü yönerge gibi görünmeyecek şekilde işaretleyin.
- **Zarif bozulma** — plugin'ler connector yanıt vermediğinde manuel yola düşer; temiz bir hata mesajı timeout'tan iyidir.

## Nasıl katkı verilir

1. MCP sunucunuzu yayınlayın; araçları, kimlik akışını ve veri kapsamını belgeleyin.
2. İlgili plugin'in `.mcp.json` dosyasına eklemek için PR açın: URL, kimlik yöntemi ve Claude'a ne kazandırdığına dair tek satır açıklama ile.
3. Hangi pratik alanları/plugin'leri için en kullanışlı olduğunu not edin.
4. Plugin iş akışlarıyla test ederiz; erişim kalitesi ve injection direnci kontrollerini geçenler varsayılan `.mcp.json`'a girer; diğerleri kullanıcıların kendi ekleyebilmesi için README'de belgelenir.

## Mevcut connector'lar

Her plugin'in `.mcp.json` dosyasında bulunanlar:

| Connector | Plugin'ler |
|---|---|
| **Yargı PRO** (`https://yargimcp.surucu.dev/mcp`) | Yargıtay/Danıştay/AYM/AİHM kararları + mevzuat.gov.tr + kurum kararları (KVKK, Rekabet, SPK, BDDK, BTK, EPDK, GİB vb.) — atıf doğrulamasının omurgası |
| **Slack** | operasyonel (opsiyonel) |
| **Google Drive** | operasyonel (opsiyonel) |

Ayrıca geliştiricinin açık kaynak projeleri: [saidsurucu/yargi-mcp](https://github.com/saidsurucu/yargi-mcp) ve [saidsurucu/mevzuat-mcp](https://github.com/saidsurucu/mevzuat-mcp).

Yetkili liste için her plugin dizinindeki `.mcp.json` dosyasına bakın.

## Aranan connector'lar

Şu connector'lar ilgili plugin'leri belirgin biçimde güçlendirir:

- **TÜRKPATENT sicil erişimi** — marka/patent tescil durumu ve yenileme tarihleri için `fikri-mulkiyet` portföy takibi
- **UYAP entegrasyonu** — dosya evrak akışı ve kesin süre takibi için `dava-yonetimi`
- **MKK / KAP veri erişimi** — halka açık şirket bildirimleri için `sirketler-hukuku`
- **VDR erişimi** (Intralinks / Datasite benzeri) — `sirketler-hukuku` durum tespiti
- **Jira / Linear / Asana OSS talep takibi** — `fikri-mulkiyet` açık kaynak incelemesi
- **Resmi mevzuat kaynakları** — RG fihristi ve kurum duyuru beslemelerinin yapılandırılmış API'si — `mevzuat-takip` için birincil kaynak katmanı
- **AB mevzuatı erişimi** (EUR-Lex) — AB Yapay Zekâ Yasası gibi karşılaştırmalı rejimler için `yz-yonetisim`

## Sorular

Bu depoda issue açın.
