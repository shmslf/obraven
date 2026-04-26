# OBRAVEN

Independent wind measurement, bankability and owner-side advisory for utility-scale renewable energy decisions.

Live site: <https://www.obraven.com/>

## What this repository is

This repository contains the static public website for **OBRAVEN Limited**, an Ireland-registered renewable energy advisory business.

The site is deliberately simple:

- one static HTML page
- local image and font assets
- no analytics
- no contact form
- no externally hosted fonts
- no non-essential cookies
- public booking routed through `https://www.obraven.com/book`

## Public positioning

OBRAVEN helps developers, investors and advisory teams make sharper decisions where wind resource evidence, measurement strategy, energy yield assumptions and bankability meet.

The public site should stay focused on:

- wind resource measurement strategy and procurement support
- independent challenge of energy yield assumptions, loss factors and bankability logic
- owner-side technical-commercial judgement at high-stakes project decision points
- founder-led senior review by Stan Herasymenko

## Repository structure

```text
/
├─ index.html
├─ README.md
├─ .gitattributes
├─ .gitignore
├─ favicon.ico
├─ favicon.svg
├─ favicon-16x16.png
├─ favicon-32x32.png
├─ apple-touch-icon.png
└─ assets/
   ├─ brand/
   │  ├─ OBRAVEN-Logo-PrimaryWithTagline-Light-v1.1-2026-04-24.svg
   │  ├─ obraven-social-card-1200x630.png
   │  ├─ OBRAVEN-M365-Header-DarkNav-TransparentWhite-Final-800x192-v1.3-2026-04-26.png
   │  └─ OBRAVEN-M365-Header-DarkNav-TransparentWhite-Compact-Final-800x192-v1.3-2026-04-26.png
   ├─ fonts/
   │  ├─ inter/
   │  └─ manrope/
   ├─ images/
   │  └─ obraven-founder-photo.jpg
   └─ documents/
      └─ maintenance notes and asset registers
```

## Booking route

The public scheduling link is:

```text
https://www.obraven.com/book
```

This is a brand-owned Cloudflare 301 redirect to Microsoft Bookings. Do not use the raw Microsoft Bookings URL in public copy unless troubleshooting.

## Privacy and third-party dependency stance

The website avoids non-essential third-party dependencies. Fonts are self-hosted as WOFF2 files under `assets/fonts/`. This keeps typography local to `obraven.com` and avoids runtime browser requests to external font providers.

The booking journey leaves the static website and enters Microsoft Bookings. Do not describe the full booking journey as cookie-free.

## Maintenance rules

Before publishing changes:

1. Keep the site static unless there is a strong reason not to.
2. Do not add analytics, trackers, embedded widgets or third-party scripts casually.
3. Do not commit client material, credentials, internal operating notes, screenshots, invoices or private OneDrive paths.
4. Keep public copy aligned with the OBRAVEN positioning: specialist, decision-focused, bankability-aware, owner-side.
5. Test the four `/book` variants after any Cloudflare or DNS change:
   - `https://obraven.com/book`
   - `https://obraven.com/book/`
   - `https://www.obraven.com/book`
   - `https://www.obraven.com/book/`
6. Test the live site in desktop Edge/Chrome and Android.
7. Check that the browser Network panel shows no calls to Google Fonts, Calendly, analytics or other avoidable third parties.

## Rights

© 2026 OBRAVEN Limited. All rights reserved.

This repository is publicly visible for website hosting and transparency. No open-source licence is granted for OBRAVEN copy, brand assets, images, visual identity or business materials. Third-party font files remain subject to their own licences.
