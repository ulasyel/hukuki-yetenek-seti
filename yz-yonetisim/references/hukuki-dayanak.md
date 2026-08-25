# Hukuki Dayanak — YZ Yönetişimi

> Bu dosya `yz-yonetisim` plugin'inin birincil kaynak katmanıdır (teyit tarihi: 2026-08-25). Türkiye'de yatay bir yapay zekâ kanunu **bulunmamaktadır**; bu alan KVKK + ticari sır + FSEK ve sektör mevzuatı çerçevesinde yönetilir. AB Yapay Zekâ Yasası (Regulation (EU) 2024/1689) yalnızca AB pazarına dokunan sistemler için ilgilidir.

## 1. Uygulanacak Türk Hukuku Çerçevesi

| Konu | Dayanak | Not |
|---|---|---|
| Kişisel veri işleme, profil, otomatik karar | KVKK m.5–6, m.11/ğ (otomatik sisteme itiraz), m.12 | Madde metinleri: `kvkk-uyum/references/hukuki-dayanak.md` |
| Model eğitiminde veri kullanımı | KVKK amaç bağlantısı ve meşru menfaat tartışması; Kurul rehber/kararları | Kurul kararı numarası gerektiğinde `kurum_karari_ara(kurum:"kvkk")` ile o anda teyit edilir |
| Eğitim verisindeki telifli içerik | FSEK m.20–23 (çoğaltma/işleme/yayma hakları), istisnalar m.32–40 | Metin teyidi: `fikri-mulkiyet/references/hukuki-dayanak.md` |
| Ticari sır / gizlilik | TTK m.55 (ticari sır kapsamı) | Metin teyidi: `ticari-sozlesmeler/references/hukuki-dayanak.md` §2 |
| Çalışan verisiyle YZ kullanımı | KVKK + İK hükümleri | `is-hukuku/references/hukuki-dayanak.md` |

## 2. Dikkat Noktaları

- "KVKK m.11/ğ otomatik karar itiraz hakkı" — madde metninden doğrulanmıştır (bkz. kvkk dayanak dosyası §2).
- AB Yapay Zekâ Yasası atıflarında madde numarası (özellikle Art. 27 FRIA gibi pinpoints) **yalnızca EUR-Lex resmi metninden** teyit edildikten sonra yazılır.
- Türkiye'de YZ için yasal DPIA zorunluluğu yoktur; risk değerlendirmesi iyi uygulama olarak yürütülür (`vked-taslagi` ile koordinasyon).

## 3. Teyit Kuyruğu

- TTK m.55'in ticari sır tanımının madde düzeyi yeniden teyidi
- KVKK Kurulu'nun YZ odaklı ilke kararlarının numara düzeyi envanteri
- AB YZ Yasası uyumluluk takviminin güncel durumu (EUR-Lex)

Son güncelleme: 2026-08-25
