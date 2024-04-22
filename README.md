
<!-- README.md is generated from README.Rmd. Please edit that file -->

# EasySentiment

<!-- badges: start -->
<!-- badges: end -->

The goal of EasySentiment is to provide for an easy way to do simple
sentiment analysis quickly. Conducting basic sentiment analysis can be
fairly easy but it can involve many steps that could be confusing to
someone inexperinced or unfamiliar with the technichal details. This
package will provide a function to create a sentiment analysis function
that will allow the user to choose from a few sentiment dictionaries. It
will also provide a function to visulaize the sentimetns with a few
options. Overall, this will provide someone with little technichal know
how the ability to conduct a basic sentiment analysis.

## How to Install

## Example of get_sentiments()

``` r
library(EasySentiment)

example_strings <- c("I am really angry right now", "I am very very happy", "Rage and mixed feelings", "i lied")
example_sentiments <- get_sentiments(example_strings, "bing")
#> Warning: package 'dplyr' was built under R version 4.3.1
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
#> Joining with `by = join_by(word)`
```
