library(testthat)

expect_that(farsPackage::make_filename(2014),equals("accident_2014.csv.bz2"))

expect_that(colnames(farsPackage::fars_summarize_years(c(2013, 2014, 2015))),
            equals(c("MONTH","2013","2014","2015" )))
