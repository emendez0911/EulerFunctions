#' Nth Lexicographic Permutation
#'
#' Gets the nth lexicographic permutation of a vector. Adaptation of Knuth's algorithm for generating all permutations (The Art of Computer Programming, V4, 7.2.1.2).
#'
#' @param vector A vector.
#' @param nth A number indicating the requested nth permutation of \code{vector}.
#' @return The nth permutation of the given vector.
#' @keywords permutations
#' @export
#' @examples
#' v <- c(1,2,3)
#' nth_permutation(v, 4)

nth_permutation <- function(vector, nth) {
    if (nth < 1 | length(vector) == 0)
        return(NA)

    if (length(vector) == 1) # if it's a vector of one elment, return the same vector
        return(vector)

    vector <- vector[order(vector)] # first
    n <- length(vector)

    if (nth > prod(n:1))
        print(paste("Limit number of permutations for this vector is:", prod(n:1)))

    if (nth > 1) {
        for (i in 2:nth) { # repeating until breaking out of loop
            # L2 --------------------------
            j <- n - 1
            while (vector[j] >= vector[j+1]) {
                j <- j - 1

                if (j  == 0)
                    break() # breaks inner while loop
            }

            if (j  == 0)
                break() # breaks outer for loop (if limit of permutations is reached)

            # L3 ---------------------------
            l <- n
            while (vector[j] >= vector[l]) {
                l <- l - 1
            }

            vector <- swap(vector, j, l) # changes positions

            # L4 ---------------------------
            k <- j + 1
            l <- n
            while(k < l) { # orders elements after j in ascending mode
                vector <- swap(vector, k, l)
                k <- k + 1
                l <- l - 1
            }
        }
    }

    return(vector)
}
