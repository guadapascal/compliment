
# compliment

<!-- badges: start -->

<!-- badges: end -->

compliment generates randomized, uplifting compliments and farewells by
combining adjectives, traits, and closings from built-in word banks.

## Installation

You can install the development version of compliment from
[GitHub](https://github.com/guadapascal/compliment) with:

``` r
# install.packages("pak")
pak::pak("guadapascal/compliment")
```

## Usage

Generate a single compliment:

``` r
library(compliment)

compliment()
#> [1] "You have a truly amazing insight!"
```

Generate several compliments at once with `n`:

``` r
compliment(5)
#> [1] "You have a truly brilliant creativity!"  
#> [2] "You have a truly resilient patience!"    
#> [3] "You have a truly inspiring curiosity!"   
#> [4] "You have a truly resilient curiosity!"   
#> [5] "You have a truly amazing sense of humor!"
```

`compliment()` validates its input, so non-numeric or non-positive
values of `n` raise an informative error:

``` r
compliment(0)
#> Error:
#> ! `n` must be a single positive whole number.
```

Generate a random goodbye with `farewell()`:

``` r
farewell()
#> [1] "Wishing you well! Have a restful day."
```

Like `compliment()`, it also accepts `n` to generate several at once:

``` r
farewell(3)
#> [1] "Take care! Have a fantastic day."      
#> [2] "Until next time! Have a wonderful day."
#> [3] "Catch you later! Have a bright day."
```
