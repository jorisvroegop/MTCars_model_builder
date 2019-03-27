---
title       : MTCars Model Builder
subtitle    : Developing Data Products - Course Project
author      : Joris Vroegop
framework   : io2012      
highlighter : highlight.js
hitheme     : monokai
mode        : selfcontained
knit        : slidify::knit2slides
--- .quote

<q> This MTCars Model Builder allows you to see various relationships with MPG.</q>

---
  
## Data

We use the following variables from the `mtcars` dataset:


```r
data("mtcars")
head(mtcars[,c("mpg", "wt", "hp", "disp", "qsec")])
```

```
##                    mpg    wt  hp disp  qsec
## Mazda RX4         21.0 2.620 110  160 16.46
## Mazda RX4 Wag     21.0 2.875 110  160 17.02
## Datsun 710        22.8 2.320  93  108 18.61
## Hornet 4 Drive    21.4 3.215 110  258 19.44
## Hornet Sportabout 18.7 3.440 175  360 17.02
## Valiant           18.1 3.460 105  225 20.22
```

---

## Goal

The Shiny app let's use see the relationship between a chosen variable and `mpg` (miles per gallon). For example horsepower `hp` vs `mpg`:


```r
plot(mtcars[,c("hp", "mpg")], pch = 16)
abline(lm(mtcars[,"mpg"] ~ mtcars[,"hp"]), col="blue", lwd=2)
```

<img src="assets/fig/fig1-1.png" title="plot of chunk fig1" alt="plot of chunk fig1" style="display: block; margin: auto;" />

---


## GitHub repo

See my GitHub repo for the ui.R and server.R files: 
https://github.com/jorisvroegop/MTCars_model_builder
---

