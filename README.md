
# compliment

<!-- badges: start -->

<!-- badges: end -->

compliment generates randomized, uplifting compliments by combining
adjectives and traits from a built-in word bank.

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
#> [1] "You have a truly creative curiosity!"
```

Generate several compliments at once with `n`:

``` r
compliment(5)
#> [1] "You have a truly radiant energy!"    
#> [2] "You have a truly creative energy!"   
#> [3] "You have a truly genuine insight!"   
#> [4] "You have a truly wonderful kindness!"
#> [5] "You have a truly wonderful smile!"
```

`compliment()` validates its input, so non-numeric or non-positive
values of `n` raise an informative error:

``` r
compliment(0)
#> Error:
#> ! `n` must be a single positive whole number.
```
