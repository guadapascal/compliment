#' Farewell adjectives
#'
#' Descriptive words used to build farewells.
#' @keywords internal
farewell_adjectives <- c(
  "wonderful", "lovely", "great", "fantastic", "restful",
  "peaceful", "joyful", "amazing", "relaxing", "bright"
)

#' Farewell closings
#'
#' Sign-off phrases used to build farewells.
#' @keywords internal
farewell_closings <- c(
  "Take care", "See you soon", "Until next time", "Stay safe",
  "Farewell", "Catch you later", "Wishing you well", "So long"
)

#' Generate a random goodbye
#'
#' Randomly assembles a farewell from a bank of adjectives and closings.
#'
#' @param n Number of farewells to generate. Defaults to `1`.
#'
#' @return A character vector of length `n` containing farewells.
#'
#' @examples
#' farewell()
#' farewell(3)
#'
#' @export
farewell <- function(n = 1) {
  if (!is.numeric(n) || length(n) != 1 || n < 1 || n != round(n)) {
    stop("`n` must be a single positive whole number.", call. = FALSE)
  }

  adjectives <- sample(farewell_adjectives, n, replace = TRUE)
  closings <- sample(farewell_closings, n, replace = TRUE)

  sprintf("%s! Have a %s day.", closings, adjectives)
}
