[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/Roger-Li/farsPackage?branch=master&svg=true)](https://ci.appveyor.com/project/Roger-Li/farsPackage)

As a programming assignment submission for the Coursera class [Building an R Package](https://www.coursera.org/learn/r-packages/), farsPackage provides convenient functions to extract, aggregate and
visualise the [Fatality Analysis Reporting System (FARS)](https://www.nhtsa.gov/research-data/fatality-analysis-reporting-system-fars) data from the US National Highway Traffic Safety Administration, which is a nationwide census providing the American public yearly data regarding fatal injuries suffered in motor vehicle traffic crashes.


## Installation

You can install the package from GitHub using the `install_github` function from `devtools` as follows

```R
library(devtools)
install_github("Roger-Li/farsPackage")
library(farsPackage)
```

## Load data from the package
```R
data <- system.file("extdata", "accident_2013.csv.bz2", package = "farsPackage")
```

## Read data into a tibble.
```R
library(dplyr)
library(readr)
df <- fars_read(data)
```

## Summarise data
The `fars_summarize_years` function reads in a vector of files and returns the # of observation by month and year
```R
library(tidyr)
aggregated <- fars_summarize_years(c(2013, 2014, 2015))
```

## Plot data
`fars_map_state` function is used to draw observations as points on a map
```R
library(maps)
library(graphics)
fars_map_state(48, 2015)
```

