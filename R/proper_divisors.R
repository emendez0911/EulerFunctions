#' Proper divisors
#'
#' Get proper divisors of a number n, i.e. numbers below n that divide evenly into n.
#' @param number A number.
#' @return An ordered vector of proper divisors.
#' @export
#' @examples
#' proper_divisors(100)

proper_divisors <- function(number) {
    factors <- vector()
    if (number == 1)
        return(NULL)

    factors[1] <- 1

    if (number > 2) {
        for (i in 2:sqrt(number)) {
            if (number %% i == 0) {
                factors[length(factors) + 1] <- i

                if (i * i != number) # avoid repeating when is a perfect square
                    factors[length(factors) + 1] <- number/i
            }
        }
    }

    return(factors[order(factors)]) # return ordered factors
}
