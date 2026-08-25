# oc-status/ — weekly OC status-request drafts

Output from `/dava-yonetimi:dis-buro-durum`. Per-run folders dated by day; each contains one markdown file per matter drafted, plus a `_summary.md`.

## Layout

```
oc-status/
├── _README.md                       # this file
└── [YYYY-MM-DD]/
    ├── _summary.md                  # what ran, what was skipped and why
    ├── [slug-1].md                  # one email draft per matter
    ├── [slug-2].md
    └── ...
```

When the Gmail MCP is authenticated, Gmail drafts are also created in the user's inbox. The markdown files are the persistent record; Gmail drafts are the action layer.

## Cadence

Weekly (Monday AM) when scheduled. Register the schedule with `/dava-yonetimi:dis-buro-durum --setup-schedule`.

Ad-hoc any time with `/dava-yonetimi:dis-buro-durum` (default filter) or `/dava-yonetimi:dis-buro-durum --slug=[slug]` (one matter).

## Housekeeping

Old dated folders accumulate. Nothing needs them after OC has responded and matter history is updated. Feel free to delete older than 30 days.
