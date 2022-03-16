## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  warning = FALSE, 
  message = FALSE,
  comment = "#>"
)

## ---- eval=FALSE--------------------------------------------------------------
#  library(tvthemes)
#  
#  import_simpsons()         ## "Akbar" font
#  import_avatar()           ## "Slayer" font (formerly `theme_theLastAirbender()`)
#  import_rickAndMorty()     ## "Get Schwifty" font
#  import_robotoCondensed()  ## "Roboto Condensed" Google Font import from hrbrthemes
#  import_titilliumWeb()     ## "Titillium Web" Google Font import from hrbrthemes
#  import_spongeBob()        ## "Some Time Later" font
#  import_cinzel()           ## "Cinzel" font to use with 'The Palettes of Ice & Fire'
#  import_chelseaMarket()    ## "Chelsea Market" font for "Hilda"
#  import_gravitationFalls() ## "Gravitation Falls" font for "Gravity Falls"
#  
#  ## install.packages("extrafont")
#  library(extrafont)
#  loadfonts() ## You need to do this at the beginning of a session.

## -----------------------------------------------------------------------------
scales::show_col(tvthemes:::brooklyn99_palette$Dark)
scales::show_col(tvthemes:::gravityFalls_palette)
scales::show_col(tvthemes:::simpsons_palette)
scales::show_col(tvthemes:::stevenUniverse_palette$Peridot)

