---
name: genisleme-guncelleme
description: >
  Açık employment expansion tracker'ını günceller. Yerel hukuk, SGK/vergi/payroll,
  iş sözleşmesi, KVKK, İSG, çalışma izni, EOR ve politika aksiyonlarının durumunu
  değiştirir; yeni risk veya blokaj varsa işaretler.
argument-hint: "[slug] [güncelleme]"
---

# /genisleme-guncelleme

1. `~/.claude/plugins/config/hukuki-yetenek-seti/is-hukuku/expansion/<slug>/tracker.md` dosyasını oku.
2. Güncellemeyi ilgili kapıya işle.
3. Yeni kırmızı bayrak varsa özetle.
4. Sonraki aksiyonu ve sahibini yaz.

Çıktı:

```markdown
# Expansion Update - [slug]

**Güncellenen kapı:** [kapı]
**Yeni durum:** [durum]

## Risk / Blokaj
- [varsa]

## Sonraki Aksiyon
- [aksiyon, sahip, tarih]
```
