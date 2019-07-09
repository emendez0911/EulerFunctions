#' Greates common divisor
#'
#' Gets greatest common divisor of two numbers.
#' @param a,b numbers.
#' @return A number that is the greatest common divisor of \code{a} & \code{b}.
#' @keywords gcd
#' @export
#' @examples
#' greatest_common_div(27,30)

greatest_common_div <- function(a,b) {
    while (b != 0) { # euclidean algorithm
        temp <- b
        b <- a %% b
        a <- temp
    }

    return(a)
}
