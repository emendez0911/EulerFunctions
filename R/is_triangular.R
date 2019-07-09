#' Triangular number test
#'
#' Checks if number is triangular, based on formula Tn = n*(n+1)/2.
#' @param m A number.
#' @return \code{TRUE} if triangular, \code{FALSE} if not.
#' @export
#' @examples
#' is_triangular(10)
#' is_triangular(20)

is_triangular <- function(m) {
    # solving for n, resulting equation is:
    # n = (-1 + sqrt(1 + 8m))/2
    # therefore 1 + 8m has to be a perfect square
    n <- sqrt(1 + 8*m)

    if (n == floor(n))
        return(TRUE)

    return(FALSE)
}
