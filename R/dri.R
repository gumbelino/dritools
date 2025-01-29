#' Calculates DRI
#'
#' Calculates DRI from a correlation matrix.
#'
#' @param IC correlation matrix
#' @param R policy preference ranks
#' @param Q consideration ratings
#'
#' @returns DRI matrix
#' @export
#'
#' @examples
dri <- function(IC, R, Q){
  lambda <- 1 - (sqrt(2) / 2)
  res <- 2 * (((1 - mean(abs((IC[[R]] - IC[[Q]]) / sqrt(2)))) - (lambda))/(1 - (lambda))) - 1
  return(res)
}
