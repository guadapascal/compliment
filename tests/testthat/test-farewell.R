test_that("farewell() returns the requested number of strings", {
  expect_length(farewell(1), 1)
  expect_length(farewell(5), 5)
})

test_that("farewell() returns character vectors", {
  expect_type(farewell(), "character")
})

test_that("farewell() validates n", {
  expect_error(farewell(0))
  expect_error(farewell(-1))
  expect_error(farewell(1.5))
  expect_error(farewell("a"))
})

test_that("farewell() output has the expected shape", {
  result <- farewell(10)
  expect_true(all(grepl("^.+! Have a .+ day\\.$", result)))
})
