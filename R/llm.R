#' Format Statement
#'
#' Formats a vector of statements as:
#'
#' 1. statement A
#' 2. statement B
#' 3. statement C
#'
#' @param statements a vector of statements
#'
#' @returns A string of formatted statements.
#' @export
#'
#' @examples
#' format_statements(c("hi", "i", "am", "Gus"))
format_statements <- function(statements) {
  str <- ""
  for (p in 1:length(statements))
    str <- paste(str, sprintf("%d. %s\n", p, statements[p]))
  return(str)
}

