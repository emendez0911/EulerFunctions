#' Pandigital number test
#'
#' Checks if given number is pandigital, i.e., it makes use of all the digits from 1 to d exactly once, being d the number digits in \code{n}.
#' @param n A number.
#' @param zero logical; to indicate whether zeros are to be included. Default to \code{FALSE}.
#' @param unique logical; to indicate whether repeated numbers are allowed. Default to \code{TRUE}.
#' @return \code{TRUE} if pandigital, \code{FALSE} if not.
#' @keywords pandigital
#' @export
#' @examples
#' is_pandigital(45321)
#' is_pandigital(103254, zero = T)

is_pandigital <- function(n, zero = F) {
    d <- nchar(n)
    n_vector <- unique(number_to_vector(n))
    n_vector <- n_vector[order(n_vector)]

    if (length(n_vector) != d)
        return(FALSE)

    if (!zero) {
        if (all(n_vector == 1:d))
            return(TRUE)
    } else {
        if (all(n_vector == 0:(d-1)))
            return(TRUE)
    }

    return(FALSE)
}
