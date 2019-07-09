#' Get primes below number
#'
#' Gets primes using simple Sieve of Eratosthenes algorithm.
#' @param upper_limit Number to which to generate primes.
#' @return Vector of primes numbers below given limit (also included if prime).
#' @keywords primes
#' @export
#' @examples
#' get_primes(100)

get_primes <- function(upper_limit) {
    primes_log <- rep(TRUE, upper_limit)
    prime_numbers <- vector()

    if(upper_limit < 2)
        return("No primes below 2.")

    primes_log[1] <- FALSE

    for (i in 2:upper_limit) {
        if(primes_log[i] == TRUE) {
            j <- i * i

            while (j <= upper_limit) {
                primes_log[j] <- FALSE
                j <- j + i
            }
        }

        if(i^2 > upper_limit)
            break()
    }

    idx <- 1
    for (i in 2:upper_limit) {
        if(primes_log[i]) {
            prime_numbers[idx] <- i
            idx <- idx + 1
        }
    }

    return(prime_numbers)
}
