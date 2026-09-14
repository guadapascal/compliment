test_that("compliment() returns the requested number of strings", {
  expect_length(compliment(1), 1)
  expect_length(compliment(5), 5)
})

test_that("compliment() returns character vectors", {
  expect_type(compliment(), "character")
})

test_that("compliment() validates n", {
  expect_error(compliment(0))
  expect_error(compliment(-1))
  expect_error(compliment(1.5))
  expect_error(compliment("a"))
})

test_that("compliment() output has the expected shape", {
  result <- compliment(10)
  expect_true(all(grepl("^You have a truly .+ .+!$", result)))
})
