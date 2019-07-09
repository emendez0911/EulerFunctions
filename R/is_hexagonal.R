#' Hexagonal number test
#'
#' Checks if number is hexagonal, based on formula Pn = n(3n−1)/2.
#' @param h A number.
#' @return \code{TRUE} if hexagonal, \code{FALSE} if not.
#' @export
#' @examples
#' is_hexagonal(15)
#' is_hexagonal(20)

is_hexagonal <- function(h) {
    # Solving equation for n results in:
    n <- (1 + sqrt(1 + 8*h))/4

    if (n == floor(n)) # If n is integer, then TRUE.
        return(TRUE)

    return(FALSE)
}
