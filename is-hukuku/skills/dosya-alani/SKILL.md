---
name: dosya-alani
description: >
  Employment matter workspace'lerini yönetir: yeni dosya açma, listeleme, aktif
  dosya değiştirme, arşivleme veya practice-level çalışmaya dönme. Fesih, iç
  soruşturma, arabuluculuk, işçilik alacağı, politika, izin/rapor veya genişleme
  dosyalarında bağlam ayrımını korur.
argument-hint: "<new | list | switch | close | none> [slug]"
---

# /dosya-alani

## Komutlar

- `/is-hukuku:dosya-alani new <slug>` - yeni iş hukuku matter klasörü açar.
- `/is-hukuku:dosya-alani list` - aktif ve arşiv matter'ları listeler.
- `/is-hukuku:dosya-alani switch <slug>` - aktif matter'ı değiştirir.
- `/is-hukuku:dosya-alani close <slug>` - matter'ı arşivler; silmez.
- `/is-hukuku:dosya-alani none` - practice-level bağlama döner.

## Başlamadan

1. Employment `CLAUDE.md` dosyasındaki `## Matter Workspaces` bölümünü oku.
2. Kapalıysa practice-level çalışıldığını söyle.
3. Yazmadan önce yapılacak değişikliği göster ve onay al.

## Saklama Yapısı

```text
~/.claude/plugins/config/hukuki-yetenek-seti/is-hukuku/
├── CLAUDE.md
└── matters/
    ├── <slug>/
    │   ├── matter.md
    │   ├── history.md
    │   ├── notes.md
    │   └── outputs/
    └── _archived/
```

## `new <slug>` Intake

- Müvekkil / iş birimi,
- matter türü: hiring, termination, mediation, wage-hour, leave, investigation, policy, expansion, other,
- çalışan/rol veya anonim ID,
- karşı taraf / çalışan vekili / arabulucu / kurum,
- kilit tarihler,
- risk seviyesi,
- gizlilik seviyesi,
- ilişkili matter'lar.

## `matter.md` Şablonu

```markdown
GİZLİ HUKUKİ / İŞ HUKUKU ÇALIŞMA TASLAĞI - HUKUKÇU İNCELEMESİNE TABİDİR

# Matter: [Kısa açıklama]

**Slug:** [slug]
**Açılış:** [YYYY-MM-DD]
**Durum:** aktif
**Gizlilik:** standart / hassas / clean-team

## Taraflar

**İşveren / müvekkil:** [ad]
**Çalışan / karşı taraf / kurum:** [ad veya anonim ID]

## Matter Türü

[hiring | termination | mediation | wage-hour | leave | investigation | policy | expansion | other]

## Kilit Olgular

[2-5 cümle]

## Kilit Tarihler

- [tarih - olay]

## Matter'a Özel Notlar

- [profile/playbook sapması]
```

## Cross-Matter Kuralı

`Cross-matter context` kapalıysa başka matter klasörü okunmaz. Açık olsa bile başka matter ancak kullanıcı açıkça isterse okunur.

## Bu Skill Ne Yapmaz

- Çıkar çatışması veya resmi arabuluculuk/dava kaydı yapmaz.
- Arşivi silmez.
