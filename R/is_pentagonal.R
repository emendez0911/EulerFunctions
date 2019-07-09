#' Pentagonal number test
#'
#' Checks if number is pentagonal, based on formula Pn = n(3n−1)/2.
#' @param p A number.
#' @return \code{TRUE} if pentagonal, \code{FALSE} if not.
#' @export
#' @examples
#' is_pentagonal(12)
#' is_pentagonal(15)

is_pentagonal <- function(p) {
    # Solving equation for n results in:
    n <- (1 + sqrt(1 + 24*p))/6

    if (n == floor(n)) # If n is integer, then TRUE.
        return(TRUE)

    return(FALSE)
}
