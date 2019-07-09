#' Lexicographic permutations
#'
#' Get all permutations of given vector in lexicographic order using Knuth's algorithm (The Art of Computer Programming, V4, 7.2.1.2).
#'
#' @param vector A vector of elements to permute.
#' @return Vector of permutations in lexicographic order.
#' @keywords permutation
#' @export
#' @examples
#' v <- c(1,2,3)
#' permute(v)

permute <- function(vector) {
    if (length(vector) == 1)
        return(vector)

    vector <- vector[order(vector)] # first
    n <- length(vector)
    nth <- prod(length(vector):1)
    perms <- vector_to_number(vector)

    for (i in 2:nth) {
        j <- n - 1
        while (vector[j] >= vector[j+1]) {
            j <- j - 1

            if (j  == 0)
                break()
        }

        if (j  == 0)
            break()

        l <- n
        while (vector[j] >= vector[l]) {
            l <- l - 1
        }

        vector <- swap(vector, j, l)

        k <- j + 1
        l <- n
        while(k < l) {
            vector <- swap(vector, k, l)
            k <- k + 1
            l <- l - 1
        }

        perms[length(perms)+1] <- vector_to_number(vector)
    }

    return(perms)
}
