
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

``` r
remotes::install_github("Diego-Ford/EasySentiment")
#> Downloading GitHub repo Diego-Ford/EasySentiment@HEAD
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#>          checking for file 'C:\Users\diego\AppData\Local\Temp\RtmpOAxdwt\remotesdb85efa2994\Diego-Ford-EasySentiment-0189ff0/DESCRIPTION' ...  ✔  checking for file 'C:\Users\diego\AppData\Local\Temp\RtmpOAxdwt\remotesdb85efa2994\Diego-Ford-EasySentiment-0189ff0/DESCRIPTION'
#>       ─  preparing 'EasySentiment':
#>    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
#>       ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>    Omitted 'LazyData' from DESCRIPTION
#>       ─  building 'EasySentiment_0.0.0.9000.tar.gz'
#>      
#> 
#> Installing package into 'C:/Users/diego/AppData/Local/R/win-library/4.3'
#> (as 'lib' is unspecified)
```

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

head(example_sentiments)
#>   indexes  word sentiment
#> 1       1 angry  negative
#> 2       1 right  positive
#> 3       2 happy  positive
#> 4       3  rage  negative
#> 5       4  lied  negative
```

## Example of Sentiment_Vis()

``` r
library(EasySentiment)

plot <- sentiment_vis(example_sentiments$sentiment, index = example_sentiments$indexes, vis_type = "sentiment_hist")
#> Warning: package 'ggplot2' was built under R version 4.3.3
plot
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

## Example of count_sentiment()

``` r
library(EasySentiment)
sentiments <- c("positive","negative","positive","neutral","negative")

counts <- count_sentiment(sentiments)
counts
#> data
#> negative  neutral positive 
#>        2        1        2
```
