simpsons_palette <- c(
  "#fed90f", ## #FFD235 simpsons yellow    #ffdb58 mustard    #fed90f metallic yellow
  "#424f46",  ## #424f46 greyish-blue
  "#d1b271",  ## #d1b271 lightbrownbeige
  "#FB4122",  ## #f14e28 orangered    	#F85639 lisa dress
  "#ABC67D",  ## #7bc242 applegreen     #ABC67D marge dress green
  "#0363C3", ## #007c7a teal    #0363C3 marge blue
  "#7A491E", ## #f7b686 beige    #7A491E
  "#000000",  ## #000000 black
  "#FC0209",   ## bart red
  "#46732EFF" ## Flanders green #46732EFF
)

#' @title The Simpsons palette
#' @description The Simpsons palette
#' @inheritDotParams ggplot2::discrete_scale
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @rdname simpsons_pal
#' @export
#' @examples
#' library(scales)
#' show_col(simpsons_pal()(5))
#' @importFrom scales manual_pal
#' @importFrom grDevices colorRampPalette

simpsons_pal <- function(n,
                         type = c("discrete", "continuous"),
                         reverse = FALSE){
  simpsons <- simpsons_palette

  if (reverse == TRUE) {
    simpsons <- rev(simpsons)
  }

  if (missing(n)) {
    n <- length(simpsons)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(simpsons)) {
    stop(paste0("Palette does not have ", n, " colors, maximum is ", length(simpsons), "!"))
  }

  simpsons <- switch(type,
                     continuous = grDevices::colorRampPalette(simpsons)(n),
                     discrete = simpsons[1:n])

  simpsons <- scales::manual_pal(simpsons)

  return(simpsons)
}

#' @title scale_color_simpsons
#' @rdname simpsons_pal
#' @export
#' @examples
#'
#' library(ggplot2)
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_simpsons()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_color_simpsons <- function(n, type = "discrete",
                                 reverse = FALSE, ...){
  if (type == "discrete") {
  ggplot2::discrete_scale("color", "simpsons", simpsons_pal(), ...)
  } else { ## needs work...
    ggplot2::scale_color_gradientn(colors = simpsons_pal(n = n, type = type,
                                                         reverse = reverse)(8))
  }
}

#' @title scale_colour_simpsons
#' @rdname simpsons_pal
#' @export
#' @examples
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_simpsons()
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_simpsons <- scale_color_simpsons

#' @title scale_fill_simpsons
#' @rdname simpsons_pal
#' @export
#' @examples
#'
#' ggplot(mpg, aes(displ)) +
#'      geom_histogram(aes(fill = class), col = "black", size = 0.1) +
#'      scale_fill_simpsons()
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn

scale_fill_simpsons <- function(n, type = "discrete",
                                reverse = FALSE, ...){
  if (type == "discrete") {
  ggplot2::discrete_scale("fill", "simpsons", simpsons_pal(), ...)
  } else { ## needs work...
    ggplot2::scale_fill_gradientn(colors = simpsons_pal(n = n, type = type,
                                                         reverse = reverse)(8))
  }
}

