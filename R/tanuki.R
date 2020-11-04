#' @import htmlwidgets
#' @export
tanuki <- function(
  nodes,
  theme = "greensea",
  height = NULL,
  width = NULL
) {
  # mindmap options
  options <- list(
    theme = theme,
    editable = TRUE
  )

  # mindamap meta
  meta <- list(
    name = "tanuki map",
    author = "Marcos Navarro",
    version = "0.1"
  )

  x <- list(
    options = options,
    meta = meta,
    nodes = nodes
  )
  
  # create the widget
  htmlwidgets::createWidget(
    name = "tanuki",
    x = x,
    width = width,
    height = height,
    htmlwidgets::sizingPolicy(padding = 10, browser.fill = TRUE)
  )
}

#' @export
tanukiOutput <- function(outputId, width = "100%", height = "500px") {
  shinyWidgetOutput(outputId, "tanuki", width, height, package = "tanuki")
}

#' @export
renderTanuki <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, tanukiOutput, env, quoted = TRUE)
}