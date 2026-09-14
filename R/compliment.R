#' Compliment adjectives
#'
#' Descriptive words used to build compliments.
#' @keywords internal
compliment_adjectives <- c(
  "amazing", "brilliant", "wonderful", "fantastic", "delightful",
  "remarkable", "inspiring", "radiant", "outstanding", "marvelous",
  "thoughtful", "creative", "genuine", "resilient", "kind"
)

#' Compliment subjects
#'
#' Traits or qualities that a compliment can praise.
#' @keywords internal
compliment_traits <- c(
  "smile", "sense of humor", "work ethic", "creativity", "kindness",
  "energy", "insight", "patience", "style", "curiosity"
)

#' Generate a random compliment
#'
#' Randomly assembles a compliment from a bank of adjectives and traits.
#'
#' @param n Number of compliments to generate. Defaults to `1`.
#'
#' @return A character vector of length `n` containing compliments.
#'
#' @examples
#' compliment()
#' compliment(3)
#'
#' @export
compliment <- function(n = 1) {
  if (!is.numeric(n) || length(n) != 1 || n < 1 || n != round(n)) {
    stop("`n` must be a single positive whole number.", call. = FALSE)
  }

  adjectives <- sample(compliment_adjectives, n, replace = TRUE)
  traits <- sample(compliment_traits, n, replace = TRUE)

  sprintf("You have a truly %s %s!", adjectives, traits)
}
