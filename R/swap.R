#' Swap positions of elements in vector
#'
#' Swaps positions of elements in given vector.
#' @param vector A vector of values.
#' @param id_1,id_2 Indexes of elements in \code{vector} to be swapped.
#' @return Vector with positions changed.
#' @export
#' @examples
#' v <- c(1,2,3)
#' swap(v, 1, 3)

swap <- function(vector, id_1, id_2) {
    temp <- vector[id_1]
    vector[id_1] <- vector[id_2]
    vector[id_2] <- temp

    return(vector)
}
