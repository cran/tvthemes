# tvthemes 1.0.0

* New palettes:
  * Kim Possible, Big Hero 6, Stannis Baratheon, House Manderly, House Martell, House Arryn, Hilda, & Attack on Titan
* New themes:
  * Hilda: Day, Dusk, & Night
* Increased functionality in all palette functions
  * `palette`, `n`, `type`, `reverse` options added
* TV shows with multiple palettes have a single function from which you call a specific palette:
  * `scale_color_westeros(palette = "Stannis")`
  * `scale_fill_avatarTLA(palette = "EarthKingdom")`
* Toggle ticks with `ticks = TRUE` or `ticks = FALSE`
* More tests added

# tvthemes 0.0.0.9100

* Corrected `title` in P&R, R&M, TLA themes to `plot.title`
* Fix swapped `axis.title.size` and `axis.text.size` in R&M theme
* Tests added for ALL defaults in `theme_*()` to prevent above bugs

# tvthemes 0.0.0.9000

* Initial release of package.
* __Avatar: The Last Airbender__: theme + palettes (Fire Nation, Water Tribe, Earth Kingdom, & Air Nomads)
* __Brooklyn Nine-Nine__: theme + palettes (regular & dark)
* __Game of Thrones/A Song of Ice & Fire__: 'The Palettes of Ice & Fire' (currently: Stark, Lannister, Tully, Targaryen, Greyjoy, & Tyrell)
* __Rick & Morty__: theme + palette
* __Parks & Recreation__: two themes (light & dark) + palette
* __The Simpsons__: theme + palette
* __Spongebob Squarepants__: theme + palette + background images
