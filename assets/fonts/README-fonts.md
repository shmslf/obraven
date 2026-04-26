# OBRAVEN local web fonts

Status: active  
Date introduced: 2026-04-26  
Purpose: privacy-conscious local typography for the static OBRAVEN website.

## Decision

The website self-hosts Inter and Manrope as WOFF2 files instead of loading Google Fonts at runtime.

Rationale:

- avoids browser requests to third-party font domains
- supports the website privacy stance
- keeps typography stable under the `obraven.com` domain
- preserves a clean fallback stack if web fonts fail

## Required files

```text
assets/fonts/inter/inter-latin-400-normal.woff2
assets/fonts/inter/inter-latin-500-normal.woff2
assets/fonts/inter/inter-latin-600-normal.woff2
assets/fonts/inter/inter-latin-700-normal.woff2

assets/fonts/manrope/manrope-latin-500-normal.woff2
assets/fonts/manrope/manrope-latin-600-normal.woff2
assets/fonts/manrope/manrope-latin-700-normal.woff2
assets/fonts/manrope/manrope-latin-800-normal.woff2
```

## CSS mapping

The `@font-face` blocks live inside `index.html`.

Current families:

```text
Display: Manrope
Body: Inter
Fallback: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif
```

Current display policy:

```css
font-display: swap;
```

This means fallback text appears first if needed, then swaps to the downloaded local font. The failure mode is acceptable: the site remains readable in the fallback system font.

## Source and licensing

Source used for this local-font setup: Fontsource distributions for Inter and Manrope.

Date recorded: 2026-04-26.

Licensing note:

- Inter is distributed under the SIL Open Font License.
- Manrope is distributed under the SIL Open Font License.
- Keep font licence notices if future exports include upstream licence files.

## Future update script

A future update script is stored at:

```text
scripts/download-fonts-from-fontsource.ps1
```

Do not run scripts from unknown sources. Review the script before use.

## Test checklist

After updating fonts:

- Open the live site.
- DevTools → Network → filter `font`.
- Confirm WOFF2 files load from `www.obraven.com/assets/fonts/...`.
- Confirm there are no calls to `fonts.googleapis.com` or `fonts.gstatic.com`.
- Check desktop Edge/Chrome and Android.
