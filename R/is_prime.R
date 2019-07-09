#' Primality test
#'
#' Checks if given number is prime.
#' @param n A number.
#' @return \code{TRUE} if prime, \code{FALSE} if not.
#' @keywords primes
#' @export
#' @examples
#' is_prime(5)
#' is_prime(10)

is_prime <- function(n) {
    if (n < 2)
        return(FALSE)
    else if (n == 2 | n == 3)
        return(TRUE)
    else if (n %% 2 == 0 | n %% 3 == 0)
        return(FALSE)

    for (i in 2:sqrt(n)) {
        if (n %% i == 0)
            return(FALSE)
    }

    return(TRUE)
}
