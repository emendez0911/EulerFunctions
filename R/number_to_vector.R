#' Number to Vector
#'
#' Converts number into numerical vector, separating each digit as elements of the vector.
#' @param number Number to parse into numerical vector.
#' @return Numerical vector
#' @export
#' @examples
#' vector_to_number(123)

number_to_vector <- function(number) {
    n <- as.character(number)
    n <- unlist(strsplit(n, split = ''))
    n <- as.numeric(n)

    return(n)
}
