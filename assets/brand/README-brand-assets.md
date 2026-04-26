# OBRAVEN website brand assets

Status: active  
Date updated: 2026-04-26

## Purpose

This folder holds public-safe brand assets needed by the OBRAVEN website and Microsoft 365 organisation theme.

## Files in this export

```text
OBRAVEN-Logo-PrimaryWithTagline-Light-v1.1-2026-04-24.svg
obraven-social-card-1200x630.png
OBRAVEN-M365-Header-DarkNav-TransparentWhite-Final-800x192-v1.3-2026-04-26.png
OBRAVEN-M365-Header-DarkNav-TransparentWhite-Compact-Final-800x192-v1.3-2026-04-26.png
```

## Website logo

Used in `index.html`:

```html
<img src="assets/brand/OBRAVEN-Logo-PrimaryWithTagline-Light-v1.1-2026-04-24.svg">
```

## Social preview image

Used in Open Graph and Twitter metadata:

```text
https://www.obraven.com/assets/brand/obraven-social-card-1200x630.png
```

Generated from the current OBRAVEN SVG logo.

Dimensions:

```text
1200 x 630 px
```

SHA-256:

```text
0f103642715a27739541b94f532b3b96ef5516c10346aa84fa181e13b0cced70
```

## Microsoft 365 theme header assets

The Microsoft 365 theme currently uses the compact dark-nav transparent white logo.

Final design judgement from testing:

- transparent white wordmark works best on the dark Microsoft 365 navigation bar
- white-tile versions looked like stickers
- black wordmark versions were unsuitable for the dark nav
- larger 800 x 192 exports improved perceived sharpness
- internal whitespace was necessary to avoid the logo feeling too dominant

Recommended Microsoft 365 theme colours:

```text
Navigation bar: #000000
Text and icons: #FFFFFF
Accent: #1E3A5F
Logo on-click link: https://www.obraven.com
```

## Rules

- Keep filename versions explicit.
- Avoid overwriting live brand assets with the same filename.
- Do not place experimental exports directly into production paths.
- Use `_staging/` for tests and move only approved assets into `assets/brand/`.
