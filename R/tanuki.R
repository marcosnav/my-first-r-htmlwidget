#' @import htmlwidgets
#' @export
tanuki <- function(nodes, theme = "greensea") {
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
  
  # create the widget
  htmlwidgets::createWidget("tanuki", meta, options, nodes)
}

#' @export
tanukiOutput <- function(outputId, width = "100%", height = "400px") {
  shinyWidgetOutput(outputId, "tanuki", width, height, package = "tanuki")
}

#' @export
renderTanuki <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, tanukiOutput, env, quoted = TRUE)
}
