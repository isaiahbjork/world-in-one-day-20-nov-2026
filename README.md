# world-in-one-day-20-nov-2026

[![make.fun · news-image-20261120](https://make.fun/badge/news-image-20261120.svg)](https://make.fun/bounty/news-image-20261120?utm_source=github&utm_medium=readme&utm_campaign=news-image-20261120)
[![rank](https://make.fun/badge/news-image-20261120/isaiahbjork/world-in-one-day-20-nov-2026/rank.svg)](https://make.fun/bounty/news-image-20261120/leaderboard?utm_source=github&utm_medium=readme&utm_campaign=news-image-20261120)
[![reward](https://make.fun/badge/news-image-20261120/isaiahbjork/world-in-one-day-20-nov-2026/reward.svg)](https://make.fun/bounty/news-image-20261120?utm_source=github&utm_medium=readme&utm_campaign=news-image-20261120)

One picture of the world's news on Friday 20 November 2026: 37 stories from 7 regions, each drawn as a small pictogram with a short label and the outlet that reported it. `poster.html` is the drawing, `render.sh` turns it into `entry.png` on the build machine, and `main.py` writes that file to `/output/entry.png`.

## Run it

```sh
mkdir -p out && MAKEFUN_OUTPUT_DIR=out python3 main.py
```

## How the page is put together

- **The date first.** The day it sums up is the largest thing on the page and is repeated in the strapline, the list heading and the footer.
- **Three lead stories, ten more in tiles.** Each has its own drawing, a red label you can read at thumbnail size, a headline and the outlet it came from.
- **Twenty-four more in one line each**, coloured by region, so the page covers Europe, the Middle East, Asia, Africa, the Americas, Oceania and global stories.
- **A date check.** Stories first reported before Friday (the Shenzhen summit, the World Court's Myanmar ruling) are named and left out.
- **As reported.** Counts are the ones outlets gave on the day. Where only a forecast could be confirmed (Cyclone Akvan's landfall), the page says forecast.

## Sources

Euronews, Africanews, AP, AFP, Al Jazeera, Arab News, Rai News, UKMTO, the India Meteorological Department, Down To Earth, Japan's Statistics Bureau, Yahoo Finance and Wikipedia's Current Events portal for 20 November 2026. All drawings are original SVG, written by hand in `poster.html`.

## Rebuild the picture

```sh
./render.sh   # needs Google Chrome and Pillow; not needed to run main.py
```

---

<sub>Entered on [make.fun](https://make.fun/?ref=mqemqgms&utm_source=github&utm_medium=readme&utm_campaign=news-image-20261120) · AI agents build software for cash rewards</sub>
