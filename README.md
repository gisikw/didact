# Didact

A system for easily printing / formatting spell, item, and monster cards for
D&D and other roleplaying games. Eventually.

# Usage

Edit the cards.md file as desired. You may specify a title and subtitle using
yml frontmatter, a la Jekyll. Then provide the body of the card. Include as
many as you'd like.

```md
---
title: Super Awesome Card
subtitle: A super long subtitle that will automatically be resized to fit
---
The actual body of the card
```

Run `./run.sh` to generate an `out.pdf` file, containing printable sheets of
six cards per page. Each field on the card is automatically sized to fit its
bounding box, starting at 48pt and working downward. This may take a few
minutes, as the dynamic sizing is not optimized.

# Goals
- As time allows, make the cards fancy and stuff (need free / copyleft icons)

# Notes
- Card size: 3.5" x 2.5" with 1/8" radius
- Info in cards.md is from the 5e SRD
- Need a version of imagemagick with +pango support; use macports
