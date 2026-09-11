# Photography credits

Every image on the landing page comes from Wikimedia Commons under a Creative
Commons licence. Fetch them with `tools/fetch-assets.sh`.

| Local file | Commons file page | Licence (as used in the design) |
|---|---|---|
| `hero-poster.jpg` | [Burning Man aerial.jpg](https://commons.wikimedia.org/wiki/File:Burning_Man_aerial.jpg) | not verified — see file page |
| `lots-today.jpg` | [Central Park SummerStage, Manhattan, New York, US.jpg](https://commons.wikimedia.org/wiki/File:Central_Park_SummerStage,_Manhattan,_New_York,_US.jpg) | CC BY |
| `building.jpg` | [Yona Appletree's Dome (14960329318).jpg](https://commons.wikimedia.org/wiki/File:Yona_Appletree%27s_Dome_(14960329318).jpg) | CC BY-SA |
| `night-show.jpg` | [Musicians performing on stage at a night concert…jpg](https://commons.wikimedia.org/wiki/File:Musicians_performing_on_stage_at_a_night_concert_featuring_vibrant_lights_and_energetic_atmosphere.jpg) | CC BY |
| `build-crew.jpg` | [Burning Man 2013 The Church Trap! (9657159731).jpg](https://commons.wikimedia.org/wiki/File:Burning_Man_2013_The_Church_Trap!_(9657159731).jpg) | CC BY |

Hero video (still loaded from Commons, not vendored — see the PR notes):
[Black Rock City 2013 Hyperlapse.webm](https://commons.wikimedia.org/wiki/File:Black_Rock_City_2013_Hyperlapse.webm), CC BY-SA.

## Attribution: where it stands

Every credit on the page now **links to the file page** for its image, and the
hero credits the video and its poster still separately. CC's own guidance
accepts attribution given by linking to a page that carries the required
information, so the captions are defensible as they stand.

They are still not ideal. The licence text is copied from the design canvas,
which recorded only "CC BY" / "CC BY-SA" with no author and no version — and
the poster's licence was never recorded at all. Naming the creator inline is
better practice and what most reusers expect.

To finish the job, open each file page above and:

1. Fill in an `Author` column here and an exact licence (e.g. `CC BY-SA 4.0`).
2. Update the matching `<figcaption>` in `index.html` from
   `WIKIMEDIA COMMONS · CC BY` to `AUTHOR · CC BY 4.0`, keeping the link.

This could not be done from the session that wrote this file: its network
egress policy blocks commons.wikimedia.org, so no file page could be read and
no author name could be verified. Nothing here is guessed.
