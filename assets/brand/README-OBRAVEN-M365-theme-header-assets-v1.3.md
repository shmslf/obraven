---
title: OBRAVEN Microsoft 365 Theme Header Assets v1.3
date: 2026-04-26
status: active
type: asset-register
tags:
  - obraven
  - microsoft-365
  - brand-identity
  - visual-identity
  - assets
  - admin
  - website
related:
  - "[[Microsoft 365]]"
  - "[[Bookings]]"
  - "[[Website - GitHub Pages - Cloudflare]]"
  - "[[OneDrive]]"
---

# OBRAVEN Microsoft 365 Theme Header Assets v1.3

## Purpose

This package records the final Microsoft 365 organisation-theme logo assets chosen after testing the OBRAVEN header in the Microsoft 365 admin centre.

The goal is to keep a clean trace so the setup can be repeated or updated later without re-learning the same constraints.

## Final decision

Use a dark navigation bar with a transparent white OBRAVEN wordmark.

Recommended Microsoft 365 theme settings:

```text
Navigation bar color: #000000
Text and icon color: #FFFFFF
Accent color: #1E3A5F
On-click logo link: https://www.obraven.com
```

Use the same final dark-nav logo file for both:

```text
Default Logo
Alternate Logo
```

## Primary file

```text
OBRAVEN-M365-Header-DarkNav-TransparentWhite-Final-800x192-v1.3-2026-04-26.png
```

Use this first. It is the balanced final version: white transparent wordmark, underline, gold dot, and enough internal whitespace to avoid the logo feeling too large in the Microsoft 365 header.

## Fallback file

```text
OBRAVEN-M365-Header-DarkNav-TransparentWhite-Compact-Final-800x192-v1.3-2026-04-26.png
```

Use this only if the primary file still feels too visually dominant after deployment.

## Deployment location

Upload the selected PNG to the public website assets folder:

```text
/assets/
```

Expected live URL for the primary file:

```text
https://www.obraven.com/assets/OBRAVEN-M365-Header-DarkNav-TransparentWhite-Final-800x192-v1.3-2026-04-26.png
```

Expected live URL for the compact fallback:

```text
https://www.obraven.com/assets/OBRAVEN-M365-Header-DarkNav-TransparentWhite-Compact-Final-800x192-v1.3-2026-04-26.png
```

After upload, test the direct URL in an InPrivate browser window before pasting it into Microsoft 365.

## Microsoft 365 admin path

Likely path:

```text
Microsoft 365 admin center
→ Settings / Org settings / Organization profile / Custom themes
→ Default theme
→ Logos
```

Use:

```text
Default Logo: URL → primary PNG URL
Alternate Logo: URL → same primary PNG URL
On-click link: https://www.obraven.com
```

Then set colours under the Colours tab:

```text
Navigation bar color: #000000
Text and icon color: #FFFFFF
Accent color: #1E3A5F
```

Save and allow time for caching/propagation.

## Why this version won

Testing showed:

- White-tile logo variants created a “sticker on black header” effect.
- Black text variants disappeared or partly disappeared on dark Microsoft navigation.
- Transparent white wordmark looked most integrated with Microsoft’s dark header.
- Earlier logo versions were either too large, too close to the edges, or visually competed with the “Microsoft 365 admin center” text.
- Larger 800 × 192 PNGs improved perceived sharpness compared with smaller assets.
- More internal padding gave a better hierarchy: app launcher → OBRAVEN mark → Microsoft 365 app title.

## Design judgement

The header mark should behave as an organisation identifier, not as the dominant page title.

Target hierarchy:

```text
App launcher icon → OBRAVEN mark → Microsoft 365 app title
```

Avoid:

```text
OBRAVEN → Microsoft 365 app title
```

## Known constraints and observations

- Microsoft 365 theme logos are rendered into a constrained header area and can appear larger or smaller than the raw asset dimensions imply.
- Microsoft’s dark UI shell is not pure black everywhere, but the top navigation can be set to pure black.
- Microsoft 365 caching can delay or confuse logo updates.
- If old logos appear, remove the prior logo, save, then re-add the new URL.
- If the URL image appears in browser but not in Microsoft 365, allow propagation time and test again in a private browser session.
- Keep file names versioned because browser and Microsoft caching can hold onto older assets.

## Asset inventory

| File | Dimensions | Size | Use |
|---|---:|---:|---|
| `OBRAVEN-M365-Header-DarkNav-TransparentWhite-Final-800x192-v1.3-2026-04-26.png` | 800 × 192 px | 7,797 bytes | Primary Default + Alternate Logo |
| `OBRAVEN-M365-Header-DarkNav-TransparentWhite-Compact-Final-800x192-v1.3-2026-04-26.png` | 800 × 192 px | 7,441 bytes | Fallback if the primary feels too large |

## Update rule for future versions

If this needs to be updated later:

1. Keep the transparent dark-nav concept unless the Microsoft header colour changes.
2. Export at 800 × 192 px.
3. Keep the file below 10 KB if possible.
4. Keep transparent background.
5. Use white wordmark for dark Microsoft nav.
6. Preserve the underline and gold dot.
7. Adjust internal whitespace before changing brand geometry.
8. Version the file name clearly.
9. Update this note and the website asset URLs.

## Current status

Status: active.

Primary asset is the recommended live version for OBRAVEN Microsoft 365 organisation theme.
