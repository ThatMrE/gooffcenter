# Photography credits

Every image on the landing page comes from Wikimedia Commons under a Creative
Commons licence. Fetch them with `tools/fetch-assets.sh`.

| Local file | Commons file page | Licence (as used in the design) |
|---|---|---|
| `hero-poster.jpg` | [Burning Man aerial.jpg](https://commons.wikimedia.org/wiki/File:Burning_Man_aerial.jpg) | CC BY-SA |
| `lots-today.jpg` | [Central Park SummerStage, Manhattan, New York, US.jpg](https://commons.wikimedia.org/wiki/File:Central_Park_SummerStage,_Manhattan,_New_York,_US.jpg) | CC BY |
| `building.jpg` | [Yona Appletree's Dome (14960329318).jpg](https://commons.wikimedia.org/wiki/File:Yona_Appletree%27s_Dome_(14960329318).jpg) | CC BY-SA |
| `night-show.jpg` | [Musicians performing on stage at a night concert…jpg](https://commons.wikimedia.org/wiki/File:Musicians_performing_on_stage_at_a_night_concert_featuring_vibrant_lights_and_energetic_atmosphere.jpg) | CC BY |
| `build-crew.jpg` | [Burning Man 2013 The Church Trap! (9657159731).jpg](https://commons.wikimedia.org/wiki/File:Burning_Man_2013_The_Church_Trap!_(9657159731).jpg) | CC BY |

Hero video (still loaded from Commons, not vendored — see the PR notes):
[Black Rock City 2013 Hyperlapse.webm](https://commons.wikimedia.org/wiki/File:Black_Rock_City_2013_Hyperlapse.webm), CC BY-SA.

## Attribution is incomplete until these are filled in

The licence column above is copied from the design canvas, which recorded only
"CC BY" / "CC BY-SA" with no author and no version. CC BY and CC BY-SA both
require naming the **author**, the **specific licence** (e.g. CC BY-SA 4.0) and
linking to it. Open each file page above, then:

1. Add an `Author` and an exact `Licence` column entry here.
2. Update the matching `<figcaption>` in `index.html` from
   `WIKIMEDIA COMMONS · CC BY` to `AUTHOR · CC BY 4.0`, and the hero's
   `FOOTAGE:` line the same way.

Do this before launch — the current caption is not sufficient attribution for
either licence.
