#' Vector to Number
#'
#' Converts numerical vector to a number, concatenating the numbers in given vector as consecutive digits of the number.
#' @param numeric_vector Numerical vector to parse into number.
#' @return Number
#' @export
#' @examples
#' vector_to_number(c(1,2,3))

vector_to_number <- function(numeric_vector) {
    number <- as.numeric(paste0(numeric_vector, collapse = ''))
    return(number)
}
