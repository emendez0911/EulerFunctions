#' Reverse of a number
#'
#' Returns the reverse of a given number, i.e. same number but read from right to left.
#' @param number A number.
#' @return Reverse of number.
#' @export
#' @examples
#' reversed_number(1423)

reversed_number <- function(number) {
    reverse <- 0

    if(number>=10) { # numbers with two digits or more
        remainder <- number

        while (remainder != 0) {
            last_digit <- remainder%%10
            reverse <- reverse*10 + last_digit
            remainder <- remainder%/%10
        }
    } else {
        reverse <- number
    }

    return(reverse)
}
