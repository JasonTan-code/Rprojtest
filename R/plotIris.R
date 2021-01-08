#' A plot iris Function
#'
#' This function allows you to draw a column of iris dataset
#' @param column The column you want to draw, option: c("Sepal.Length", "Sepal.Width","Petal.Length","Petal.Width")
#' @keywords plotiris
#' @export
#' @examples
#' plotIris("Sepal.Length")


plotIris <- function(column){
  if (!column %in% c("Sepal.Length", "Sepal.Width","Petal.Length","Petal.Width")){
    warning("There is nothing returned")
    return()
  } else {
    return(ggplot2::ggplot(iris) + ggplot2::aes_string(x =  as.name(column)) + ggplot2::geom_histogram())
  }
}
