#' Palindromic number
#'
#' Checks if given number is a palidrome, i.e., it can be read the same both ways.
#' @param number A number.
#' @return \code{TRUE} if palindromic, \code{FALSE} if not.
#' @keywords primes
#' @export
#' @examples
#' is_palindromic(12321)
#' is_palindromic(1231)

is_palindromic <- function(number){
    if(number == reversed_number(number))
        TRUE
    else
        FALSE
}
